local({

  # the requested version of renv
  version <- "1.1.6"
  attr(version, "md5") <- "3036c4b273d882c56e8cdd660ebaf6f0"
  attr(version, "sha") <- NULL

  # the project directory
  project <- Sys.getenv("RENV_PROJECT")
  if (! nzchar(project))
    project <- getwd()

  # use start-up diagnostics if enabled
  diagnostics <- Sys.getenv("RENV_STARTUP_DIAGNOSTICS", unset = "FALSE")
  if (diagnostics) {
    start <- Sys.time()
    profile <- tempfile("renv-startup-", fileext = ".Rprof")
    utils:: Rprof(profile)
    on.exit({
      utils::Rprof(NULL)
      elapsed <- signif(difftime(Sys.time(), start, units = "auto"), digits = 2L)
      writeLines(sprintf("- renv took %s to run the autoloader.", format(elapsed)))
      writeLines(sprintf("- Profile:  %s", profile))
      print(utils::summaryRprof(profile))
    }, add = TRUE)
  }

  # figure out whether the autoloader is enabled
  enabled <- local({

    # first, check config option
    override <- getOption("renv.config.autoloader. enabled")
    if (!is.null(override))
      return(override)

    # if we're being run in a context where R_LIBS is already set,
    # don't load -- presumably we're being run as a sub-process and
    # the parent process has already set up library paths for us
    rcmd <- Sys.getenv("R_CMD", unset = NA)
    rlibs <- Sys.getenv("R_LIBS", unset = NA)
    if (!is.na(rlibs) && !is.na(rcmd))
      return(FALSE)

    # next, check environment variables
    # prefer using the configuration one in the future
    envvars <- c(
      "RENV_CONFIG_AUTOLOADER_ENABLED",
      "RENV_AUTOLOADER_ENABLED",
      "RENV_ACTIVATE_PROJECT"
    )

    for (envvar in envvars) {
      envval <- Sys.getenv(envvar, unset = NA)
      if (!is.na(envval))
        return(tolower(envval) %in% c("true", "t", "1"))
    }

    # enable by default
    TRUE

  })

  # bail if we're not enabled
  if (!enabled) {

    # if we're not enabled, we might still need to manually load
    # the user profile here
    profile <- Sys.getenv("R_PROFILE_USER", unset = "~/.Rprofile")
    if (file.exists(profile)) {
      cfg <- Sys.getenv("RENV_CONFIG_USER_PROFILE", unset = "TRUE")
      if (tolower(cfg) %in% c("true", "t", "1"))
        sys.source(profile, envir = globalenv())
    }

    return(FALSE)

  }

  # avoid recursion
  if (identical(getOption("renv.autoloader.running"), TRUE)) {
    warning("ignoring recursive attempt to run renv autoloader")
    return(invisible(TRUE))
  }

  # signal that we're loading renv during R startup
  options(renv.autoloader.running = TRUE)
  on.exit(options(renv.autoloader. running = NULL), add = TRUE)

  # signal that we've consented to use renv
  options(renv.consent = TRUE)
})
