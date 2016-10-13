#include <node.h>
#include <v8.h>
 
using namespace v8;

Handle<Value> GetPerson(const Arguments& args) {
  HandleScope scope;
  Local<Object> person = Object::New();
  person->Set(String::NewSymbol("name"), String::New("Jane Watson"));
  person->Set(String::NewSymbol("age"), Number::New(18));
  return scope.Close(person);
}

void Init(Handle<Object> exports) {
  exports->Set(String::NewSymbol("getPerson"),
     FunctionTemplate::New(GetPerson)->GetFunction());
}

NODE_MODULE(object, Init) 