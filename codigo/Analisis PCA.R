# FASE 1: PREPARACIÓN Y VALIDACIÓN DE DATOS

# Incluimos todas las variables cuantitativas relevantes disponibles
variables_diversidad <- c("n_proyectos", "H_cfg", "J_cfg", "H_actor", "J_actor")
variables_resultado <- c("ratio_media")
variables_estado <- grep("^prop_estado_", names(tabla_maestra), value = TRUE)
variables_actor <- grep("^prop_actor_", names(tabla_maestra), value = TRUE)

# Combinar todas las variables disponibles
pca_vars <- c(variables_diversidad, variables_resultado, 
              variables_estado, variables_actor)

# Preparar dataset para PCA eliminando valores faltantes
pca_data <- tabla_maestra %>% 
  select(all_of(pca_vars)) %>% 
  na.omit()

#Verificar estructura del dataset
str(pca_data)

# Matriz de covarianza preliminar para PCA
cov(pca_data)
pca.cov <- prcomp(pca_data)
pca.cov$sdev
pca.cov$rotation
summary(pca.cov)

# Matriz de correlación preliminar para PCA
cor.mat <- cor(pca_data)
cor.mat
res.pca <- prcomp(pca_data, scale = TRUE)
res.pca$sdev
res.pca$rotation
summary(res.pca)

# Matriz con autovalor correlación
eig.val <- get_eigenvalue(res.pca)
eig.val

# Matriz con autovalor correlación
eig.val_1 <- get_eigenvalue(pca.cov)
eig.val_1

# SCREEPLOT de varianza retenida.

fviz_screeplot(pca.cov, ncp=14, choice="eigenvalue") 
