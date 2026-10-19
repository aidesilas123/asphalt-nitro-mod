package gateway.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.g1;
import gateway.v1.CampaignStateOuterClass;
import gateway.v1.DynamicDeviceInfoOuterClass;
import gateway.v1.SessionCountersOuterClass;
import gateway.v1.StaticDeviceInfoOuterClass;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class OperativeEventRequestOuterClass {

    public static final class OperativeEventErrorData extends GeneratedMessageLite<OperativeEventErrorData, a> implements com.google.protobuf.r0 {
        private static final OperativeEventErrorData DEFAULT_INSTANCE;
        public static final int ERROR_TYPE_FIELD_NUMBER = 1;
        public static final int MESSAGE_FIELD_NUMBER = 2;
        private static volatile g1<OperativeEventErrorData> PARSER;
        private int errorType_;
        private String message_ = "";

        public static final class a extends GeneratedMessageLite.b<OperativeEventErrorData, a> implements com.google.protobuf.r0 {
            private a() {
                super(OperativeEventErrorData.DEFAULT_INSTANCE);
            }

            /* synthetic */ a(a aVar) {
                this();
            }

            public a b(OperativeEventErrorType operativeEventErrorType) {
                copyOnWrite();
                ((OperativeEventErrorData) this.instance).setErrorType(operativeEventErrorType);
                return this;
            }

            public a d(String str) {
                copyOnWrite();
                ((OperativeEventErrorData) this.instance).setMessage(str);
                return this;
            }
        }

        static {
            OperativeEventErrorData operativeEventErrorData = new OperativeEventErrorData();
            DEFAULT_INSTANCE = operativeEventErrorData;
            GeneratedMessageLite.registerDefaultInstance(OperativeEventErrorData.class, operativeEventErrorData);
        }

        private OperativeEventErrorData() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErrorType() {
            this.errorType_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessage() {
            this.message_ = getDefaultInstance().getMessage();
        }

        public static OperativeEventErrorData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static a newBuilder(OperativeEventErrorData operativeEventErrorData) {
            return DEFAULT_INSTANCE.createBuilder(operativeEventErrorData);
        }

        public static OperativeEventErrorData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OperativeEventErrorData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static OperativeEventErrorData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OperativeEventErrorData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static OperativeEventErrorData parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static OperativeEventErrorData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static OperativeEventErrorData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static OperativeEventErrorData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static OperativeEventErrorData parseFrom(InputStream inputStream) throws IOException {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static OperativeEventErrorData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static OperativeEventErrorData parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static OperativeEventErrorData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static OperativeEventErrorData parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static OperativeEventErrorData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (OperativeEventErrorData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static g1<OperativeEventErrorData> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorType(OperativeEventErrorType operativeEventErrorType) {
            this.errorType_ = operativeEventErrorType.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorTypeValue(int i) {
            this.errorType_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMessage(String str) {
            str.getClass();
            this.message_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMessageBytes(ByteString byteString) {
            com.google.protobuf.a.checkByteStringIsUtf8(byteString);
            this.message_ = byteString.toStringUtf8();
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            a aVar = null;
            switch (a.a[methodToInvoke.ordinal()]) {
                case 1:
                    return new OperativeEventErrorData();
                case 2:
                    return new a(aVar);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002Ȉ", new Object[]{"errorType_", "message_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    g1<OperativeEventErrorData> cVar = PARSER;
                    if (cVar == null) {
                        synchronized (OperativeEventErrorData.class) {
                            cVar = PARSER;
                            if (cVar == null) {
                                cVar = new GeneratedMessageLite.c<>(DEFAULT_INSTANCE);
                                PARSER = cVar;
                            }
                            break;
                        }
                    }
                    return cVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public OperativeEventErrorType getErrorType() {
            OperativeEventErrorType operativeEventErrorTypeForNumber = OperativeEventErrorType.forNumber(this.errorType_);
            return operativeEventErrorTypeForNumber == null ? OperativeEventErrorType.UNRECOGNIZED : operativeEventErrorTypeForNumber;
        }

        public int getErrorTypeValue() {
            return this.errorType_;
        }

        public String getMessage() {
            return this.message_;
        }

        public ByteString getMessageBytes() {
            return ByteString.copyFromUtf8(this.message_);
        }
    }

    public enum OperativeEventErrorType implements Internal.c {
        OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED(0),
        OPERATIVE_EVENT_ERROR_TYPE_TIMEOUT(1),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Internal.d<OperativeEventErrorType> f8154d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f8156f;

        class a implements Internal.d<OperativeEventErrorType> {
            a() {
            }

            @Override // com.google.protobuf.Internal.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public OperativeEventErrorType findValueByNumber(int i) {
                return OperativeEventErrorType.forNumber(i);
            }
        }

        private static final class b implements Internal.e {
            static final Internal.e a = new b();

            private b() {
            }

            @Override // com.google.protobuf.Internal.e
            public boolean isInRange(int i) {
                return OperativeEventErrorType.forNumber(i) != null;
            }
        }

        OperativeEventErrorType(int i) {
            this.f8156f = i;
        }

        public static OperativeEventErrorType forNumber(int i) {
            if (i == 0) {
                return OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED;
            }
            if (i != 1) {
                return null;
            }
            return OPERATIVE_EVENT_ERROR_TYPE_TIMEOUT;
        }

        public static Internal.d<OperativeEventErrorType> internalGetValueMap() {
            return f8154d;
        }

        public static Internal.e internalGetVerifier() {
            return b.a;
        }

        @Deprecated
        public static OperativeEventErrorType valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.Internal.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.f8156f;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    public static final class OperativeEventRequest extends GeneratedMessageLite<OperativeEventRequest, a> implements b {
        public static final int ADDITIONAL_DATA_FIELD_NUMBER = 5;
        public static final int CAMPAIGN_STATE_FIELD_NUMBER = 10;
        private static final OperativeEventRequest DEFAULT_INSTANCE;
        public static final int DYNAMIC_DEVICE_INFO_FIELD_NUMBER = 9;
        public static final int EVENT_ID_FIELD_NUMBER = 1;
        public static final int EVENT_TYPE_FIELD_NUMBER = 2;
        public static final int IMPRESSION_OPPORTUNITY_ID_FIELD_NUMBER = 3;
        private static volatile g1<OperativeEventRequest> PARSER = null;
        public static final int SESSION_COUNTERS_FIELD_NUMBER = 7;
        public static final int SID_FIELD_NUMBER = 6;
        public static final int STATIC_DEVICE_INFO_FIELD_NUMBER = 8;
        public static final int TRACKING_TOKEN_FIELD_NUMBER = 4;
        private ByteString additionalData_;
        private CampaignStateOuterClass.CampaignState campaignState_;
        private DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo_;
        private ByteString eventId_;
        private int eventType_;
        private ByteString impressionOpportunityId_;
        private SessionCountersOuterClass.SessionCounters sessionCounters_;
        private String sid_;
        private StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo_;
        private ByteString trackingToken_;

        public static final class a extends GeneratedMessageLite.b<OperativeEventRequest, a> implements b {
            private a() {
                super(OperativeEventRequest.DEFAULT_INSTANCE);
            }

            /* synthetic */ a(a aVar) {
                this();
            }

            public a b(ByteString byteString) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setAdditionalData(byteString);
                return this;
            }

            public a d(CampaignStateOuterClass.CampaignState campaignState) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setCampaignState(campaignState);
                return this;
            }

            public a e(DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setDynamicDeviceInfo(dynamicDeviceInfo);
                return this;
            }

            public a f(ByteString byteString) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setEventId(byteString);
                return this;
            }

            public a g(OperativeEventType operativeEventType) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setEventType(operativeEventType);
                return this;
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public CampaignStateOuterClass.CampaignState getCampaignState() {
                return ((OperativeEventRequest) this.instance).getCampaignState();
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
                return ((OperativeEventRequest) this.instance).getDynamicDeviceInfo();
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public SessionCountersOuterClass.SessionCounters getSessionCounters() {
                return ((OperativeEventRequest) this.instance).getSessionCounters();
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
                return ((OperativeEventRequest) this.instance).getStaticDeviceInfo();
            }

            public a h(ByteString byteString) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setImpressionOpportunityId(byteString);
                return this;
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public boolean hasCampaignState() {
                return ((OperativeEventRequest) this.instance).hasCampaignState();
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public boolean hasDynamicDeviceInfo() {
                return ((OperativeEventRequest) this.instance).hasDynamicDeviceInfo();
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public boolean hasSessionCounters() {
                return ((OperativeEventRequest) this.instance).hasSessionCounters();
            }

            @Override // gateway.v1.OperativeEventRequestOuterClass.b
            public boolean hasStaticDeviceInfo() {
                return ((OperativeEventRequest) this.instance).hasStaticDeviceInfo();
            }

            public a i(SessionCountersOuterClass.SessionCounters sessionCounters) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setSessionCounters(sessionCounters);
                return this;
            }

            public a j(String str) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setSid(str);
                return this;
            }

            public a k(StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setStaticDeviceInfo(staticDeviceInfo);
                return this;
            }

            public a l(ByteString byteString) {
                copyOnWrite();
                ((OperativeEventRequest) this.instance).setTrackingToken(byteString);
                return this;
            }
        }

        static {
            OperativeEventRequest operativeEventRequest = new OperativeEventRequest();
            DEFAULT_INSTANCE = operativeEventRequest;
            GeneratedMessageLite.registerDefaultInstance(OperativeEventRequest.class, operativeEventRequest);
        }

        private OperativeEventRequest() {
            ByteString byteString = ByteString.EMPTY;
            this.eventId_ = byteString;
            this.impressionOpportunityId_ = byteString;
            this.trackingToken_ = byteString;
            this.additionalData_ = byteString;
            this.sid_ = "";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAdditionalData() {
            this.additionalData_ = getDefaultInstance().getAdditionalData();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCampaignState() {
            this.campaignState_ = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDynamicDeviceInfo() {
            this.dynamicDeviceInfo_ = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEventId() {
            this.eventId_ = getDefaultInstance().getEventId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEventType() {
            this.eventType_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearImpressionOpportunityId() {
            this.impressionOpportunityId_ = getDefaultInstance().getImpressionOpportunityId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSessionCounters() {
            this.sessionCounters_ = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSid() {
            this.sid_ = getDefaultInstance().getSid();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStaticDeviceInfo() {
            this.staticDeviceInfo_ = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTrackingToken() {
            this.trackingToken_ = getDefaultInstance().getTrackingToken();
        }

        public static OperativeEventRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCampaignState(CampaignStateOuterClass.CampaignState campaignState) {
            campaignState.getClass();
            CampaignStateOuterClass.CampaignState campaignState2 = this.campaignState_;
            if (campaignState2 == null || campaignState2 == CampaignStateOuterClass.CampaignState.getDefaultInstance()) {
                this.campaignState_ = campaignState;
            } else {
                this.campaignState_ = CampaignStateOuterClass.CampaignState.newBuilder(this.campaignState_).mergeFrom(campaignState).buildPartial();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDynamicDeviceInfo(DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo) {
            dynamicDeviceInfo.getClass();
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo2 = this.dynamicDeviceInfo_;
            if (dynamicDeviceInfo2 == null || dynamicDeviceInfo2 == DynamicDeviceInfoOuterClass.DynamicDeviceInfo.getDefaultInstance()) {
                this.dynamicDeviceInfo_ = dynamicDeviceInfo;
            } else {
                this.dynamicDeviceInfo_ = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.newBuilder(this.dynamicDeviceInfo_).mergeFrom(dynamicDeviceInfo).buildPartial();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSessionCounters(SessionCountersOuterClass.SessionCounters sessionCounters) {
            sessionCounters.getClass();
            SessionCountersOuterClass.SessionCounters sessionCounters2 = this.sessionCounters_;
            if (sessionCounters2 == null || sessionCounters2 == SessionCountersOuterClass.SessionCounters.getDefaultInstance()) {
                this.sessionCounters_ = sessionCounters;
            } else {
                this.sessionCounters_ = SessionCountersOuterClass.SessionCounters.newBuilder(this.sessionCounters_).mergeFrom(sessionCounters).buildPartial();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStaticDeviceInfo(StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo) {
            staticDeviceInfo.getClass();
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo2 = this.staticDeviceInfo_;
            if (staticDeviceInfo2 == null || staticDeviceInfo2 == StaticDeviceInfoOuterClass.StaticDeviceInfo.getDefaultInstance()) {
                this.staticDeviceInfo_ = staticDeviceInfo;
            } else {
                this.staticDeviceInfo_ = StaticDeviceInfoOuterClass.StaticDeviceInfo.newBuilder(this.staticDeviceInfo_).mergeFrom(staticDeviceInfo).buildPartial();
            }
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static a newBuilder(OperativeEventRequest operativeEventRequest) {
            return DEFAULT_INSTANCE.createBuilder(operativeEventRequest);
        }

        public static OperativeEventRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OperativeEventRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static OperativeEventRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OperativeEventRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static OperativeEventRequest parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static OperativeEventRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static OperativeEventRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static OperativeEventRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static OperativeEventRequest parseFrom(InputStream inputStream) throws IOException {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static OperativeEventRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static OperativeEventRequest parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static OperativeEventRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static OperativeEventRequest parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static OperativeEventRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (OperativeEventRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static g1<OperativeEventRequest> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAdditionalData(ByteString byteString) {
            byteString.getClass();
            this.additionalData_ = byteString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCampaignState(CampaignStateOuterClass.CampaignState campaignState) {
            campaignState.getClass();
            this.campaignState_ = campaignState;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDynamicDeviceInfo(DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo) {
            dynamicDeviceInfo.getClass();
            this.dynamicDeviceInfo_ = dynamicDeviceInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEventId(ByteString byteString) {
            byteString.getClass();
            this.eventId_ = byteString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEventType(OperativeEventType operativeEventType) {
            this.eventType_ = operativeEventType.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEventTypeValue(int i) {
            this.eventType_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImpressionOpportunityId(ByteString byteString) {
            byteString.getClass();
            this.impressionOpportunityId_ = byteString;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSessionCounters(SessionCountersOuterClass.SessionCounters sessionCounters) {
            sessionCounters.getClass();
            this.sessionCounters_ = sessionCounters;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSid(String str) {
            str.getClass();
            this.sid_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSidBytes(ByteString byteString) {
            com.google.protobuf.a.checkByteStringIsUtf8(byteString);
            this.sid_ = byteString.toStringUtf8();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStaticDeviceInfo(StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo) {
            staticDeviceInfo.getClass();
            this.staticDeviceInfo_ = staticDeviceInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTrackingToken(ByteString byteString) {
            byteString.getClass();
            this.trackingToken_ = byteString;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            a aVar = null;
            switch (a.a[methodToInvoke.ordinal()]) {
                case 1:
                    return new OperativeEventRequest();
                case 2:
                    return new a(aVar);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\n\u0002\f\u0003\n\u0004\n\u0005\n\u0006Ȉ\u0007\t\b\t\t\t\n\t", new Object[]{"eventId_", "eventType_", "impressionOpportunityId_", "trackingToken_", "additionalData_", "sid_", "sessionCounters_", "staticDeviceInfo_", "dynamicDeviceInfo_", "campaignState_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    g1<OperativeEventRequest> cVar = PARSER;
                    if (cVar == null) {
                        synchronized (OperativeEventRequest.class) {
                            cVar = PARSER;
                            if (cVar == null) {
                                cVar = new GeneratedMessageLite.c<>(DEFAULT_INSTANCE);
                                PARSER = cVar;
                            }
                            break;
                        }
                    }
                    return cVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public ByteString getAdditionalData() {
            return this.additionalData_;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public CampaignStateOuterClass.CampaignState getCampaignState() {
            CampaignStateOuterClass.CampaignState campaignState = this.campaignState_;
            return campaignState == null ? CampaignStateOuterClass.CampaignState.getDefaultInstance() : campaignState;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo = this.dynamicDeviceInfo_;
            return dynamicDeviceInfo == null ? DynamicDeviceInfoOuterClass.DynamicDeviceInfo.getDefaultInstance() : dynamicDeviceInfo;
        }

        public ByteString getEventId() {
            return this.eventId_;
        }

        public OperativeEventType getEventType() {
            OperativeEventType operativeEventTypeForNumber = OperativeEventType.forNumber(this.eventType_);
            return operativeEventTypeForNumber == null ? OperativeEventType.UNRECOGNIZED : operativeEventTypeForNumber;
        }

        public int getEventTypeValue() {
            return this.eventType_;
        }

        public ByteString getImpressionOpportunityId() {
            return this.impressionOpportunityId_;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public SessionCountersOuterClass.SessionCounters getSessionCounters() {
            SessionCountersOuterClass.SessionCounters sessionCounters = this.sessionCounters_;
            return sessionCounters == null ? SessionCountersOuterClass.SessionCounters.getDefaultInstance() : sessionCounters;
        }

        public String getSid() {
            return this.sid_;
        }

        public ByteString getSidBytes() {
            return ByteString.copyFromUtf8(this.sid_);
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo = this.staticDeviceInfo_;
            return staticDeviceInfo == null ? StaticDeviceInfoOuterClass.StaticDeviceInfo.getDefaultInstance() : staticDeviceInfo;
        }

        public ByteString getTrackingToken() {
            return this.trackingToken_;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public boolean hasCampaignState() {
            return this.campaignState_ != null;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public boolean hasDynamicDeviceInfo() {
            return this.dynamicDeviceInfo_ != null;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public boolean hasSessionCounters() {
            return this.sessionCounters_ != null;
        }

        @Override // gateway.v1.OperativeEventRequestOuterClass.b
        public boolean hasStaticDeviceInfo() {
            return this.staticDeviceInfo_ != null;
        }
    }

    public enum OperativeEventType implements Internal.c {
        OPERATIVE_EVENT_TYPE_UNSPECIFIED(0),
        OPERATIVE_EVENT_TYPE_SPECIFIED_BY_AD_PLAYER(1),
        OPERATIVE_EVENT_TYPE_LOAD_ERROR(2),
        OPERATIVE_EVENT_TYPE_SHOW_ERROR(3),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Internal.d<OperativeEventType> f8159f = new a();
        private final int h;

        class a implements Internal.d<OperativeEventType> {
            a() {
            }

            @Override // com.google.protobuf.Internal.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public OperativeEventType findValueByNumber(int i) {
                return OperativeEventType.forNumber(i);
            }
        }

        private static final class b implements Internal.e {
            static final Internal.e a = new b();

            private b() {
            }

            @Override // com.google.protobuf.Internal.e
            public boolean isInRange(int i) {
                return OperativeEventType.forNumber(i) != null;
            }
        }

        OperativeEventType(int i) {
            this.h = i;
        }

        public static OperativeEventType forNumber(int i) {
            if (i == 0) {
                return OPERATIVE_EVENT_TYPE_UNSPECIFIED;
            }
            if (i == 1) {
                return OPERATIVE_EVENT_TYPE_SPECIFIED_BY_AD_PLAYER;
            }
            if (i == 2) {
                return OPERATIVE_EVENT_TYPE_LOAD_ERROR;
            }
            if (i != 3) {
                return null;
            }
            return OPERATIVE_EVENT_TYPE_SHOW_ERROR;
        }

        public static Internal.d<OperativeEventType> internalGetValueMap() {
            return f8159f;
        }

        public static Internal.e internalGetVerifier() {
            return b.a;
        }

        @Deprecated
        public static OperativeEventType valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.Internal.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.h;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public interface b extends com.google.protobuf.r0 {
        CampaignStateOuterClass.CampaignState getCampaignState();

        DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo();

        SessionCountersOuterClass.SessionCounters getSessionCounters();

        StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo();

        boolean hasCampaignState();

        boolean hasDynamicDeviceInfo();

        boolean hasSessionCounters();

        boolean hasStaticDeviceInfo();
    }

    private OperativeEventRequestOuterClass() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
