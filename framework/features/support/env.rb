def caps
  { caps:       { deviceName: (ENV['DEVICE'] || DEFAULT_DEVICE),
                  platformName: 'iOS',
                  platformVersion: (ENV['SDK'] || '8.2'),
                  app: APP_PATH,
                  language: $locale.split(" ")[0],
                  locale: $locale.split(" ")[1],
                  bundleId: '',
                  locationServicesEnabled: true,
                  locationServicesAuthorized: true,
                  orientation: 'portrait',
                  newCommandTimeout: '36000',
                  nativeInstrumentsLib: NATIVE_INSTRUMENTS },
    appium_lib: { wait: DEFAULT_TIMEOUT,
                  debug: false } }
end