<?php
class ControllerCustomAGB extends Controller {
	public function index() {
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('custom/agb', $data));
	}
}