altlvds_rx0_inst : altlvds_rx0 PORT MAP (
		pll_areset	 => pll_areset_sig,
		rx_data_align	 => rx_data_align_sig,
		rx_in	 => rx_in_sig,
		rx_inclock	 => rx_inclock_sig,
		rx_out	 => rx_out_sig,
		rx_outclock	 => rx_outclock_sig
	);
