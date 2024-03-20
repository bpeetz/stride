use flutter_rust_bridge::frb;
use lazy_static::lazy_static;
use std::{
    path::{Path, PathBuf},
    sync::Mutex,
};

lazy_static! {
    pub(crate) static ref APPLICATION_PATHS_INSTANCE: Mutex<ApplicationPaths> =
        ApplicationPaths::default().into();
}

#[frb]
#[derive(Default)]
pub struct ApplicationPaths {
    pub support_path: String,
    pub document_path: String,
    pub cache_path: String,
}

impl ApplicationPaths {
    pub fn init(paths: ApplicationPaths) {
        std::env::set_var("HOME", &paths.support_path);

        let ssh_path = Path::new(&paths.support_path).join(".ssh");

        std::fs::create_dir_all(&ssh_path);
        std::fs::write(ssh_path.join("known_hosts"), "\n").unwrap();

        *APPLICATION_PATHS_INSTANCE.lock().unwrap() = paths;
    }
}

#[allow(dead_code)]
pub(crate) fn application_support_path() -> PathBuf {
    PathBuf::from(
        APPLICATION_PATHS_INSTANCE
            .lock()
            .unwrap()
            .support_path
            .clone(),
    )
}

#[allow(dead_code)]
pub(crate) fn application_document_path() -> PathBuf {
    PathBuf::from(
        APPLICATION_PATHS_INSTANCE
            .lock()
            .unwrap()
            .document_path
            .clone(),
    )
}

#[allow(dead_code)]
pub(crate) fn application_cache_path() -> PathBuf {
    PathBuf::from(
        APPLICATION_PATHS_INSTANCE
            .lock()
            .unwrap()
            .cache_path
            .clone(),
    )
}
