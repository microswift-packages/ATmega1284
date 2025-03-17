import HAL

extension ATmega1284.Cpu: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { (`sreg`.registerValue & 0x80) == 0x80  }
    set { if newValue { `sreg`.registerValue |= 0x80 } else { `sreg`.registerValue &= (~0x80) } }
  }
}

extension ATmega1284: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { Cpu.globalInterruptsEnabled }
    set { Cpu.globalInterruptsEnabled = newValue }
  }
}
