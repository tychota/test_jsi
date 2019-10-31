#pragma once

#import <jsi/jsi.h>

using namespace facebook;

@class BAMModule;

class JSI_EXPORT BAMJsiModule : public jsi::HostObject {
public:
  BAMJsiModule(BAMModule *bamModule);
  static void install(BAMModule *bamModule);
  jsi::Value get(jsi::Runtime &runtime, const jsi::PropNameID &name) override;
private:
  REAModule* bamModule_;
}
