//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/parser/RpcParser.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/base/FatSeqUpdate.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "im/actor/model/api/base/SeqUpdateTooLong.h"
#include "im/actor/model/api/base/WeakUpdate.h"
#include "im/actor/model/api/parser/RpcParser.h"
#include "im/actor/model/api/rpc/RequestAddContact.h"
#include "im/actor/model/api/rpc/RequestChangeEmailTitle.h"
#include "im/actor/model/api/rpc/RequestChangePhoneTitle.h"
#include "im/actor/model/api/rpc/RequestClearChat.h"
#include "im/actor/model/api/rpc/RequestCompleteUpload.h"
#include "im/actor/model/api/rpc/RequestCreateGroup.h"
#include "im/actor/model/api/rpc/RequestDeleteChat.h"
#include "im/actor/model/api/rpc/RequestDeleteMessage.h"
#include "im/actor/model/api/rpc/RequestDetachEmail.h"
#include "im/actor/model/api/rpc/RequestEditAvatar.h"
#include "im/actor/model/api/rpc/RequestEditGroupAvatar.h"
#include "im/actor/model/api/rpc/RequestEditGroupTitle.h"
#include "im/actor/model/api/rpc/RequestEditName.h"
#include "im/actor/model/api/rpc/RequestEditUserLocalName.h"
#include "im/actor/model/api/rpc/RequestEncryptedRead.h"
#include "im/actor/model/api/rpc/RequestEncryptedReceived.h"
#include "im/actor/model/api/rpc/RequestGetAuthSessions.h"
#include "im/actor/model/api/rpc/RequestGetContacts.h"
#include "im/actor/model/api/rpc/RequestGetDifference.h"
#include "im/actor/model/api/rpc/RequestGetFile.h"
#include "im/actor/model/api/rpc/RequestGetPublicKeys.h"
#include "im/actor/model/api/rpc/RequestGetState.h"
#include "im/actor/model/api/rpc/RequestImportContacts.h"
#include "im/actor/model/api/rpc/RequestInviteUser.h"
#include "im/actor/model/api/rpc/RequestKickUser.h"
#include "im/actor/model/api/rpc/RequestLeaveGroup.h"
#include "im/actor/model/api/rpc/RequestLoadDialogs.h"
#include "im/actor/model/api/rpc/RequestLoadHistory.h"
#include "im/actor/model/api/rpc/RequestMessageRead.h"
#include "im/actor/model/api/rpc/RequestMessageReceived.h"
#include "im/actor/model/api/rpc/RequestRegisterApplePush.h"
#include "im/actor/model/api/rpc/RequestRegisterGooglePush.h"
#include "im/actor/model/api/rpc/RequestRemoveAvatar.h"
#include "im/actor/model/api/rpc/RequestRemoveContact.h"
#include "im/actor/model/api/rpc/RequestRemoveGroupAvatar.h"
#include "im/actor/model/api/rpc/RequestSearchContacts.h"
#include "im/actor/model/api/rpc/RequestSendAuthCall.h"
#include "im/actor/model/api/rpc/RequestSendAuthCode.h"
#include "im/actor/model/api/rpc/RequestSendEmailCode.h"
#include "im/actor/model/api/rpc/RequestSendEncryptedMessage.h"
#include "im/actor/model/api/rpc/RequestSendMessage.h"
#include "im/actor/model/api/rpc/RequestSetOnline.h"
#include "im/actor/model/api/rpc/RequestSignIn.h"
#include "im/actor/model/api/rpc/RequestSignOut.h"
#include "im/actor/model/api/rpc/RequestSignUp.h"
#include "im/actor/model/api/rpc/RequestStartUpload.h"
#include "im/actor/model/api/rpc/RequestSubscribeFromGroupOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeFromOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeToGroupOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeToOnline.h"
#include "im/actor/model/api/rpc/RequestTerminateAllSessions.h"
#include "im/actor/model/api/rpc/RequestTerminateSession.h"
#include "im/actor/model/api/rpc/RequestTyping.h"
#include "im/actor/model/api/rpc/RequestUnregisterPush.h"
#include "im/actor/model/api/rpc/RequestUploadPart.h"
#include "im/actor/model/api/rpc/ResponseAuth.h"
#include "im/actor/model/api/rpc/ResponseCompleteUpload.h"
#include "im/actor/model/api/rpc/ResponseCreateGroup.h"
#include "im/actor/model/api/rpc/ResponseEditAvatar.h"
#include "im/actor/model/api/rpc/ResponseEditGroupAvatar.h"
#include "im/actor/model/api/rpc/ResponseGetAuthSessions.h"
#include "im/actor/model/api/rpc/ResponseGetContacts.h"
#include "im/actor/model/api/rpc/ResponseGetDifference.h"
#include "im/actor/model/api/rpc/ResponseGetFile.h"
#include "im/actor/model/api/rpc/ResponseGetPublicKeys.h"
#include "im/actor/model/api/rpc/ResponseImportContacts.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/api/rpc/ResponseLoadHistory.h"
#include "im/actor/model/api/rpc/ResponseSearchContacts.h"
#include "im/actor/model/api/rpc/ResponseSendAuthCode.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/api/rpc/ResponseSeqDate.h"
#include "im/actor/model/api/rpc/ResponseStartUpload.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "im/actor/model/network/parser/RpcScope.h"
#include "java/io/IOException.h"

@implementation ImActorModelApiParserRpcParser

- (ImActorModelNetworkParserRpcScope *)readWithInt:(jint)type
                                     withByteArray:(IOSByteArray *)payload {
  switch (type) {
    case 1:
    return ImActorModelApiRpcRequestSendAuthCode_fromBytesWithByteArray_(payload);
    case 90:
    return ImActorModelApiRpcRequestSendAuthCall_fromBytesWithByteArray_(payload);
    case 3:
    return ImActorModelApiRpcRequestSignIn_fromBytesWithByteArray_(payload);
    case 4:
    return ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(payload);
    case 80:
    return ImActorModelApiRpcRequestGetAuthSessions_fromBytesWithByteArray_(payload);
    case 82:
    return ImActorModelApiRpcRequestTerminateSession_fromBytesWithByteArray_(payload);
    case 83:
    return ImActorModelApiRpcRequestTerminateAllSessions_fromBytesWithByteArray_(payload);
    case 84:
    return ImActorModelApiRpcRequestSignOut_fromBytesWithByteArray_(payload);
    case 96:
    return ImActorModelApiRpcRequestEditUserLocalName_fromBytesWithByteArray_(payload);
    case 53:
    return ImActorModelApiRpcRequestEditName_fromBytesWithByteArray_(payload);
    case 31:
    return ImActorModelApiRpcRequestEditAvatar_fromBytesWithByteArray_(payload);
    case 91:
    return ImActorModelApiRpcRequestRemoveAvatar_fromBytesWithByteArray_(payload);
    case 120:
    return ImActorModelApiRpcRequestSendEmailCode_fromBytesWithByteArray_(payload);
    case 123:
    return ImActorModelApiRpcRequestDetachEmail_fromBytesWithByteArray_(payload);
    case 124:
    return ImActorModelApiRpcRequestChangePhoneTitle_fromBytesWithByteArray_(payload);
    case 125:
    return ImActorModelApiRpcRequestChangeEmailTitle_fromBytesWithByteArray_(payload);
    case 7:
    return ImActorModelApiRpcRequestImportContacts_fromBytesWithByteArray_(payload);
    case 87:
    return ImActorModelApiRpcRequestGetContacts_fromBytesWithByteArray_(payload);
    case 89:
    return ImActorModelApiRpcRequestRemoveContact_fromBytesWithByteArray_(payload);
    case 114:
    return ImActorModelApiRpcRequestAddContact_fromBytesWithByteArray_(payload);
    case 112:
    return ImActorModelApiRpcRequestSearchContacts_fromBytesWithByteArray_(payload);
    case 14:
    return ImActorModelApiRpcRequestSendEncryptedMessage_fromBytesWithByteArray_(payload);
    case 92:
    return ImActorModelApiRpcRequestSendMessage_fromBytesWithByteArray_(payload);
    case 116:
    return ImActorModelApiRpcRequestEncryptedReceived_fromBytesWithByteArray_(payload);
    case 117:
    return ImActorModelApiRpcRequestEncryptedRead_fromBytesWithByteArray_(payload);
    case 55:
    return ImActorModelApiRpcRequestMessageReceived_fromBytesWithByteArray_(payload);
    case 57:
    return ImActorModelApiRpcRequestMessageRead_fromBytesWithByteArray_(payload);
    case 98:
    return ImActorModelApiRpcRequestDeleteMessage_fromBytesWithByteArray_(payload);
    case 99:
    return ImActorModelApiRpcRequestClearChat_fromBytesWithByteArray_(payload);
    case 100:
    return ImActorModelApiRpcRequestDeleteChat_fromBytesWithByteArray_(payload);
    case 65:
    return ImActorModelApiRpcRequestCreateGroup_fromBytesWithByteArray_(payload);
    case 85:
    return ImActorModelApiRpcRequestEditGroupTitle_fromBytesWithByteArray_(payload);
    case 86:
    return ImActorModelApiRpcRequestEditGroupAvatar_fromBytesWithByteArray_(payload);
    case 101:
    return ImActorModelApiRpcRequestRemoveGroupAvatar_fromBytesWithByteArray_(payload);
    case 69:
    return ImActorModelApiRpcRequestInviteUser_fromBytesWithByteArray_(payload);
    case 70:
    return ImActorModelApiRpcRequestLeaveGroup_fromBytesWithByteArray_(payload);
    case 71:
    return ImActorModelApiRpcRequestKickUser_fromBytesWithByteArray_(payload);
    case 118:
    return ImActorModelApiRpcRequestLoadHistory_fromBytesWithByteArray_(payload);
    case 104:
    return ImActorModelApiRpcRequestLoadDialogs_fromBytesWithByteArray_(payload);
    case 6:
    return ImActorModelApiRpcRequestGetPublicKeys_fromBytesWithByteArray_(payload);
    case 27:
    return ImActorModelApiRpcRequestTyping_fromBytesWithByteArray_(payload);
    case 29:
    return ImActorModelApiRpcRequestSetOnline_fromBytesWithByteArray_(payload);
    case 16:
    return ImActorModelApiRpcRequestGetFile_fromBytesWithByteArray_(payload);
    case 18:
    return ImActorModelApiRpcRequestStartUpload_fromBytesWithByteArray_(payload);
    case 20:
    return ImActorModelApiRpcRequestUploadPart_fromBytesWithByteArray_(payload);
    case 22:
    return ImActorModelApiRpcRequestCompleteUpload_fromBytesWithByteArray_(payload);
    case 51:
    return ImActorModelApiRpcRequestRegisterGooglePush_fromBytesWithByteArray_(payload);
    case 76:
    return ImActorModelApiRpcRequestRegisterApplePush_fromBytesWithByteArray_(payload);
    case 52:
    return ImActorModelApiRpcRequestUnregisterPush_fromBytesWithByteArray_(payload);
    case 9:
    return ImActorModelApiRpcRequestGetState_fromBytesWithByteArray_(payload);
    case 11:
    return ImActorModelApiRpcRequestGetDifference_fromBytesWithByteArray_(payload);
    case 32:
    return ImActorModelApiRpcRequestSubscribeToOnline_fromBytesWithByteArray_(payload);
    case 33:
    return ImActorModelApiRpcRequestSubscribeFromOnline_fromBytesWithByteArray_(payload);
    case 74:
    return ImActorModelApiRpcRequestSubscribeToGroupOnline_fromBytesWithByteArray_(payload);
    case 75:
    return ImActorModelApiRpcRequestSubscribeFromGroupOnline_fromBytesWithByteArray_(payload);
    case 2:
    return ImActorModelApiRpcResponseSendAuthCode_fromBytesWithByteArray_(payload);
    case 5:
    return ImActorModelApiRpcResponseAuth_fromBytesWithByteArray_(payload);
    case 81:
    return ImActorModelApiRpcResponseGetAuthSessions_fromBytesWithByteArray_(payload);
    case 103:
    return ImActorModelApiRpcResponseEditAvatar_fromBytesWithByteArray_(payload);
    case 8:
    return ImActorModelApiRpcResponseImportContacts_fromBytesWithByteArray_(payload);
    case 88:
    return ImActorModelApiRpcResponseGetContacts_fromBytesWithByteArray_(payload);
    case 113:
    return ImActorModelApiRpcResponseSearchContacts_fromBytesWithByteArray_(payload);
    case 66:
    return ImActorModelApiRpcResponseCreateGroup_fromBytesWithByteArray_(payload);
    case 115:
    return ImActorModelApiRpcResponseEditGroupAvatar_fromBytesWithByteArray_(payload);
    case 119:
    return ImActorModelApiRpcResponseLoadHistory_fromBytesWithByteArray_(payload);
    case 105:
    return ImActorModelApiRpcResponseLoadDialogs_fromBytesWithByteArray_(payload);
    case 24:
    return ImActorModelApiRpcResponseGetPublicKeys_fromBytesWithByteArray_(payload);
    case 17:
    return ImActorModelApiRpcResponseGetFile_fromBytesWithByteArray_(payload);
    case 19:
    return ImActorModelApiRpcResponseStartUpload_fromBytesWithByteArray_(payload);
    case 23:
    return ImActorModelApiRpcResponseCompleteUpload_fromBytesWithByteArray_(payload);
    case 12:
    return ImActorModelApiRpcResponseGetDifference_fromBytesWithByteArray_(payload);
    case 50:
    return ImActorModelApiRpcResponseVoid_fromBytesWithByteArray_(payload);
    case 72:
    return ImActorModelApiRpcResponseSeq_fromBytesWithByteArray_(payload);
    case 102:
    return ImActorModelApiRpcResponseSeqDate_fromBytesWithByteArray_(payload);
    case 13:
    return ImActorModelApiBaseSeqUpdate_fromBytesWithByteArray_(payload);
    case 73:
    return ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(payload);
    case 26:
    return ImActorModelApiBaseWeakUpdate_fromBytesWithByteArray_(payload);
    case 25:
    return ImActorModelApiBaseSeqUpdateTooLong_fromBytesWithByteArray_(payload);
  }
  @throw [[JavaIoIOException alloc] init];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithInt:withByteArray:", "read", "Lim.actor.model.network.parser.RpcScope;", 0x1, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.network.parser.RpcScope;"};
  static const J2ObjcClassInfo _ImActorModelApiParserRpcParser = { 1, "RpcParser", "im.actor.model.api.parser", NULL, 0x1, 2, methods, 0, NULL, 1, superclass_type_args};
  return &_ImActorModelApiParserRpcParser;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiParserRpcParser)
