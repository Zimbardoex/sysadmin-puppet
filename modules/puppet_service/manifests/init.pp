class puppet_service {
	include puppet_service::install,puppet_service::config,puppet_service::service
}
