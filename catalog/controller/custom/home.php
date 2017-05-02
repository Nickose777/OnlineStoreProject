<?php  
class ControllerCustomHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		$this->load->language('custom/home');

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$data['order_page'] = $this->url->link('custom/order');
		$data['name'] = 'TODO - NAME';

		$data['content_top'] = $this->load->controller('common/content_top');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		$data['gallery'] = $this->load->view('common/gallery');

		$this->response->setOutput($this->load->view('custom/home', $data));
	}
}
?>