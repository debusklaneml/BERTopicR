




setup_bertopic <-
  function(envname = 'bertopic_env') {
    if (is.null(reticulate::conda_binary())) {
      reticulate::install_miniconda()
    }

    if (reticulate::use_condaenv(condaenv = 'notional_env')). #TODO I stopped here. I want to be able to discover if a conda env is there and if it contains what it needs.
    # reticulate::use_condaenv(condaenv = 'bertopic_env')
    # Remove existing env and start fresh:
    # if (!is.null(tryCatch(
    #   conda_python(envname),
    #   error = function(e)
    #     NULL
    # )))
    #   reticulate::conda_remove(envname)

    packages <- c('bertopic', 'sentence-transformers', 'umap-learn', 'hdbscan')

    reticulate::conda_create(
      envname = envname,
      packages = c('pandas', 'numpy', 'scipy')
      )

    # reticulate::py_install(
    #   packages       = packages,
    #   envname        = envname,
    #   conda          = 'auto',
    #   method         = 'auto',
    #   # python_version = python_version,
    #   pip            = TRUE,
    #   pip_ignore_installed = FALSE
    # )

  }

setup_bertopic()
