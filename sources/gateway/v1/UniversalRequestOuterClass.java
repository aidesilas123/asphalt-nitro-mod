package gateway.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Timestamp;
import com.google.protobuf.g1;
import gateway.v1.AdDataRefreshRequestOuterClass;
import gateway.v1.AdPlayerConfigRequestOuterClass;
import gateway.v1.AdRequestOuterClass;
import gateway.v1.DeveloperConsentOuterClass;
import gateway.v1.DiagnosticEventRequestOuterClass;
import gateway.v1.GetTokenEventRequestOuterClass;
import gateway.v1.InitializationCompletedEventRequestOuterClass;
import gateway.v1.InitializationRequestOuterClass;
import gateway.v1.OperativeEventRequestOuterClass;
import gateway.v1.PiiOuterClass;
import gateway.v1.PrivacyUpdateRequestOuterClass;
import gateway.v1.TestDataOuterClass;
import gateway.v1.TimestampsOuterClass;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class UniversalRequestOuterClass {

    public static final class UniversalRequest extends GeneratedMessageLite<UniversalRequest, a> implements b {
        private static final UniversalRequest DEFAULT_INSTANCE;
        private static volatile g1<UniversalRequest> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 2;
        public static final int SHARED_DATA_FIELD_NUMBER = 1;
        private Payload payload_;
        private SharedData sharedData_;

        public static final class Payload extends GeneratedMessageLite<Payload, a> implements b {
            public static final int AD_DATA_REFRESH_REQUEST_FIELD_NUMBER = 9;
            public static final int AD_PLAYER_CONFIG_REQUEST_FIELD_NUMBER = 6;
            public static final int AD_REQUEST_FIELD_NUMBER = 3;
            private static final Payload DEFAULT_INSTANCE;
            public static final int DIAGNOSTIC_EVENT_REQUEST_FIELD_NUMBER = 5;
            public static final int GET_TOKEN_EVENT_REQUEST_FIELD_NUMBER = 7;
            public static final int INITIALIZATION_COMPLETED_EVENT_REQUEST_FIELD_NUMBER = 10;
            public static final int INITIALIZATION_REQUEST_FIELD_NUMBER = 2;
            public static final int OPERATIVE_EVENT_FIELD_NUMBER = 4;
            private static volatile g1<Payload> PARSER = null;
            public static final int PRIVACY_UPDATE_REQUEST_FIELD_NUMBER = 8;
            private int valueCase_ = 0;
            private Object value_;

            public enum ValueCase {
                INITIALIZATION_REQUEST(2),
                AD_REQUEST(3),
                OPERATIVE_EVENT(4),
                DIAGNOSTIC_EVENT_REQUEST(5),
                AD_PLAYER_CONFIG_REQUEST(6),
                GET_TOKEN_EVENT_REQUEST(7),
                PRIVACY_UPDATE_REQUEST(8),
                AD_DATA_REFRESH_REQUEST(9),
                INITIALIZATION_COMPLETED_EVENT_REQUEST(10),
                VALUE_NOT_SET(0);

                private final int l;

                ValueCase(int i) {
                    this.l = i;
                }

                public static ValueCase forNumber(int i) {
                    if (i == 0) {
                        return VALUE_NOT_SET;
                    }
                    switch (i) {
                        case 2:
                            return INITIALIZATION_REQUEST;
                        case 3:
                            return AD_REQUEST;
                        case 4:
                            return OPERATIVE_EVENT;
                        case 5:
                            return DIAGNOSTIC_EVENT_REQUEST;
                        case 6:
                            return AD_PLAYER_CONFIG_REQUEST;
                        case 7:
                            return GET_TOKEN_EVENT_REQUEST;
                        case 8:
                            return PRIVACY_UPDATE_REQUEST;
                        case 9:
                            return AD_DATA_REFRESH_REQUEST;
                        case 10:
                            return INITIALIZATION_COMPLETED_EVENT_REQUEST;
                        default:
                            return null;
                    }
                }

                @Deprecated
                public static ValueCase valueOf(int i) {
                    return forNumber(i);
                }
            }

            public static final class a extends GeneratedMessageLite.b<Payload, a> implements b {
                private a() {
                    super(Payload.DEFAULT_INSTANCE);
                }

                /* synthetic */ a(a aVar) {
                    this();
                }

                public a b(AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setAdDataRefreshRequest(adDataRefreshRequest);
                    return this;
                }

                public a d(AdRequestOuterClass.AdRequest adRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setAdRequest(adRequest);
                    return this;
                }

                public a e(DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setDiagnosticEventRequest(diagnosticEventRequest);
                    return this;
                }

                public a f(InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setInitializationCompletedEventRequest(initializationCompletedEventRequest);
                    return this;
                }

                public a g(InitializationRequestOuterClass.InitializationRequest initializationRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setInitializationRequest(initializationRequest);
                    return this;
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequest() {
                    return ((Payload) this.instance).getAdDataRefreshRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequest() {
                    return ((Payload) this.instance).getAdPlayerConfigRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public AdRequestOuterClass.AdRequest getAdRequest() {
                    return ((Payload) this.instance).getAdRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequest() {
                    return ((Payload) this.instance).getDiagnosticEventRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequest() {
                    return ((Payload) this.instance).getGetTokenEventRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequest() {
                    return ((Payload) this.instance).getInitializationCompletedEventRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public InitializationRequestOuterClass.InitializationRequest getInitializationRequest() {
                    return ((Payload) this.instance).getInitializationRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEvent() {
                    return ((Payload) this.instance).getOperativeEvent();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequest() {
                    return ((Payload) this.instance).getPrivacyUpdateRequest();
                }

                public a h(OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setOperativeEvent(operativeEventRequest);
                    return this;
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasAdDataRefreshRequest() {
                    return ((Payload) this.instance).hasAdDataRefreshRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasAdPlayerConfigRequest() {
                    return ((Payload) this.instance).hasAdPlayerConfigRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasAdRequest() {
                    return ((Payload) this.instance).hasAdRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasDiagnosticEventRequest() {
                    return ((Payload) this.instance).hasDiagnosticEventRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasGetTokenEventRequest() {
                    return ((Payload) this.instance).hasGetTokenEventRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasInitializationCompletedEventRequest() {
                    return ((Payload) this.instance).hasInitializationCompletedEventRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasInitializationRequest() {
                    return ((Payload) this.instance).hasInitializationRequest();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasOperativeEvent() {
                    return ((Payload) this.instance).hasOperativeEvent();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
                public boolean hasPrivacyUpdateRequest() {
                    return ((Payload) this.instance).hasPrivacyUpdateRequest();
                }

                public a i(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest) {
                    copyOnWrite();
                    ((Payload) this.instance).setPrivacyUpdateRequest(privacyUpdateRequest);
                    return this;
                }
            }

            static {
                Payload payload = new Payload();
                DEFAULT_INSTANCE = payload;
                GeneratedMessageLite.registerDefaultInstance(Payload.class, payload);
            }

            private Payload() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAdDataRefreshRequest() {
                if (this.valueCase_ == 9) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAdPlayerConfigRequest() {
                if (this.valueCase_ == 6) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAdRequest() {
                if (this.valueCase_ == 3) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearDiagnosticEventRequest() {
                if (this.valueCase_ == 5) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGetTokenEventRequest() {
                if (this.valueCase_ == 7) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearInitializationCompletedEventRequest() {
                if (this.valueCase_ == 10) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearInitializationRequest() {
                if (this.valueCase_ == 2) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearOperativeEvent() {
                if (this.valueCase_ == 4) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPrivacyUpdateRequest() {
                if (this.valueCase_ == 8) {
                    this.valueCase_ = 0;
                    this.value_ = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearValue() {
                this.valueCase_ = 0;
                this.value_ = null;
            }

            public static Payload getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAdDataRefreshRequest(AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest) {
                adDataRefreshRequest.getClass();
                if (this.valueCase_ != 9 || this.value_ == AdDataRefreshRequestOuterClass.AdDataRefreshRequest.getDefaultInstance()) {
                    this.value_ = adDataRefreshRequest;
                } else {
                    this.value_ = AdDataRefreshRequestOuterClass.AdDataRefreshRequest.newBuilder((AdDataRefreshRequestOuterClass.AdDataRefreshRequest) this.value_).mergeFrom(adDataRefreshRequest).buildPartial();
                }
                this.valueCase_ = 9;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAdPlayerConfigRequest(AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest) {
                adPlayerConfigRequest.getClass();
                if (this.valueCase_ != 6 || this.value_ == AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.getDefaultInstance()) {
                    this.value_ = adPlayerConfigRequest;
                } else {
                    this.value_ = AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.newBuilder((AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest) this.value_).mergeFrom(adPlayerConfigRequest).buildPartial();
                }
                this.valueCase_ = 6;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAdRequest(AdRequestOuterClass.AdRequest adRequest) {
                adRequest.getClass();
                if (this.valueCase_ != 3 || this.value_ == AdRequestOuterClass.AdRequest.getDefaultInstance()) {
                    this.value_ = adRequest;
                } else {
                    this.value_ = AdRequestOuterClass.AdRequest.newBuilder((AdRequestOuterClass.AdRequest) this.value_).mergeFrom(adRequest).buildPartial();
                }
                this.valueCase_ = 3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeDiagnosticEventRequest(DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest) {
                diagnosticEventRequest.getClass();
                if (this.valueCase_ != 5 || this.value_ == DiagnosticEventRequestOuterClass.DiagnosticEventRequest.getDefaultInstance()) {
                    this.value_ = diagnosticEventRequest;
                } else {
                    this.value_ = DiagnosticEventRequestOuterClass.DiagnosticEventRequest.newBuilder((DiagnosticEventRequestOuterClass.DiagnosticEventRequest) this.value_).mergeFrom(diagnosticEventRequest).buildPartial();
                }
                this.valueCase_ = 5;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeGetTokenEventRequest(GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest) {
                getTokenEventRequest.getClass();
                if (this.valueCase_ != 7 || this.value_ == GetTokenEventRequestOuterClass.GetTokenEventRequest.getDefaultInstance()) {
                    this.value_ = getTokenEventRequest;
                } else {
                    this.value_ = GetTokenEventRequestOuterClass.GetTokenEventRequest.newBuilder((GetTokenEventRequestOuterClass.GetTokenEventRequest) this.value_).mergeFrom(getTokenEventRequest).buildPartial();
                }
                this.valueCase_ = 7;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeInitializationCompletedEventRequest(InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest) {
                initializationCompletedEventRequest.getClass();
                if (this.valueCase_ != 10 || this.value_ == InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.getDefaultInstance()) {
                    this.value_ = initializationCompletedEventRequest;
                } else {
                    this.value_ = InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.newBuilder((InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest) this.value_).mergeFrom(initializationCompletedEventRequest).buildPartial();
                }
                this.valueCase_ = 10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeInitializationRequest(InitializationRequestOuterClass.InitializationRequest initializationRequest) {
                initializationRequest.getClass();
                if (this.valueCase_ != 2 || this.value_ == InitializationRequestOuterClass.InitializationRequest.getDefaultInstance()) {
                    this.value_ = initializationRequest;
                } else {
                    this.value_ = InitializationRequestOuterClass.InitializationRequest.newBuilder((InitializationRequestOuterClass.InitializationRequest) this.value_).mergeFrom(initializationRequest).buildPartial();
                }
                this.valueCase_ = 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeOperativeEvent(OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest) {
                operativeEventRequest.getClass();
                if (this.valueCase_ != 4 || this.value_ == OperativeEventRequestOuterClass.OperativeEventRequest.getDefaultInstance()) {
                    this.value_ = operativeEventRequest;
                } else {
                    this.value_ = OperativeEventRequestOuterClass.OperativeEventRequest.newBuilder((OperativeEventRequestOuterClass.OperativeEventRequest) this.value_).mergeFrom(operativeEventRequest).buildPartial();
                }
                this.valueCase_ = 4;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergePrivacyUpdateRequest(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest) {
                privacyUpdateRequest.getClass();
                if (this.valueCase_ != 8 || this.value_ == PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.getDefaultInstance()) {
                    this.value_ = privacyUpdateRequest;
                } else {
                    this.value_ = PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.newBuilder((PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest) this.value_).mergeFrom(privacyUpdateRequest).buildPartial();
                }
                this.valueCase_ = 8;
            }

            public static a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static a newBuilder(Payload payload) {
                return DEFAULT_INSTANCE.createBuilder(payload);
            }

            public static Payload parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Payload) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Payload parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Payload) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Payload parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Payload parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Payload parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(InputStream inputStream) throws IOException {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Payload parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Payload parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Payload parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Payload parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
                return (Payload) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static g1<Payload> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAdDataRefreshRequest(AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest) {
                adDataRefreshRequest.getClass();
                this.value_ = adDataRefreshRequest;
                this.valueCase_ = 9;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAdPlayerConfigRequest(AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest) {
                adPlayerConfigRequest.getClass();
                this.value_ = adPlayerConfigRequest;
                this.valueCase_ = 6;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAdRequest(AdRequestOuterClass.AdRequest adRequest) {
                adRequest.getClass();
                this.value_ = adRequest;
                this.valueCase_ = 3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setDiagnosticEventRequest(DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest) {
                diagnosticEventRequest.getClass();
                this.value_ = diagnosticEventRequest;
                this.valueCase_ = 5;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGetTokenEventRequest(GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest) {
                getTokenEventRequest.getClass();
                this.value_ = getTokenEventRequest;
                this.valueCase_ = 7;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setInitializationCompletedEventRequest(InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest) {
                initializationCompletedEventRequest.getClass();
                this.value_ = initializationCompletedEventRequest;
                this.valueCase_ = 10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setInitializationRequest(InitializationRequestOuterClass.InitializationRequest initializationRequest) {
                initializationRequest.getClass();
                this.value_ = initializationRequest;
                this.valueCase_ = 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOperativeEvent(OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest) {
                operativeEventRequest.getClass();
                this.value_ = operativeEventRequest;
                this.valueCase_ = 4;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPrivacyUpdateRequest(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest) {
                privacyUpdateRequest.getClass();
                this.value_ = privacyUpdateRequest;
                this.valueCase_ = 8;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                a aVar = null;
                switch (a.a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Payload();
                    case 2:
                        return new a(aVar);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0001\u0000\u0002\n\t\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0000\n<\u0000", new Object[]{"value_", "valueCase_", InitializationRequestOuterClass.InitializationRequest.class, AdRequestOuterClass.AdRequest.class, OperativeEventRequestOuterClass.OperativeEventRequest.class, DiagnosticEventRequestOuterClass.DiagnosticEventRequest.class, AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.class, GetTokenEventRequestOuterClass.GetTokenEventRequest.class, PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.class, AdDataRefreshRequestOuterClass.AdDataRefreshRequest.class, InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        g1<Payload> cVar = PARSER;
                        if (cVar == null) {
                            synchronized (Payload.class) {
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

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequest() {
                return this.valueCase_ == 9 ? (AdDataRefreshRequestOuterClass.AdDataRefreshRequest) this.value_ : AdDataRefreshRequestOuterClass.AdDataRefreshRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequest() {
                return this.valueCase_ == 6 ? (AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest) this.value_ : AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public AdRequestOuterClass.AdRequest getAdRequest() {
                return this.valueCase_ == 3 ? (AdRequestOuterClass.AdRequest) this.value_ : AdRequestOuterClass.AdRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequest() {
                return this.valueCase_ == 5 ? (DiagnosticEventRequestOuterClass.DiagnosticEventRequest) this.value_ : DiagnosticEventRequestOuterClass.DiagnosticEventRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequest() {
                return this.valueCase_ == 7 ? (GetTokenEventRequestOuterClass.GetTokenEventRequest) this.value_ : GetTokenEventRequestOuterClass.GetTokenEventRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequest() {
                return this.valueCase_ == 10 ? (InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest) this.value_ : InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public InitializationRequestOuterClass.InitializationRequest getInitializationRequest() {
                return this.valueCase_ == 2 ? (InitializationRequestOuterClass.InitializationRequest) this.value_ : InitializationRequestOuterClass.InitializationRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEvent() {
                return this.valueCase_ == 4 ? (OperativeEventRequestOuterClass.OperativeEventRequest) this.value_ : OperativeEventRequestOuterClass.OperativeEventRequest.getDefaultInstance();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequest() {
                return this.valueCase_ == 8 ? (PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest) this.value_ : PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.getDefaultInstance();
            }

            public ValueCase getValueCase() {
                return ValueCase.forNumber(this.valueCase_);
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasAdDataRefreshRequest() {
                return this.valueCase_ == 9;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasAdPlayerConfigRequest() {
                return this.valueCase_ == 6;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasAdRequest() {
                return this.valueCase_ == 3;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasDiagnosticEventRequest() {
                return this.valueCase_ == 5;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasGetTokenEventRequest() {
                return this.valueCase_ == 7;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasInitializationCompletedEventRequest() {
                return this.valueCase_ == 10;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasInitializationRequest() {
                return this.valueCase_ == 2;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasOperativeEvent() {
                return this.valueCase_ == 4;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.b
            public boolean hasPrivacyUpdateRequest() {
                return this.valueCase_ == 8;
            }
        }

        public static final class SharedData extends GeneratedMessageLite<SharedData, a> implements c {
            public static final int APP_START_TIME_FIELD_NUMBER = 8;
            public static final int CURRENT_STATE_FIELD_NUMBER = 6;
            private static final SharedData DEFAULT_INSTANCE;
            public static final int DEVELOPER_CONSENT_FIELD_NUMBER = 4;
            private static volatile g1<SharedData> PARSER = null;
            public static final int PII_FIELD_NUMBER = 3;
            public static final int SDK_START_TIME_FIELD_NUMBER = 9;
            public static final int SESSION_TOKEN_FIELD_NUMBER = 1;
            public static final int TEST_DATA_FIELD_NUMBER = 7;
            public static final int TIMESTAMPS_FIELD_NUMBER = 2;
            public static final int WEBVIEW_VERSION_FIELD_NUMBER = 5;
            private Timestamp appStartTime_;
            private int bitField0_;
            private ByteString currentState_;
            private DeveloperConsentOuterClass.DeveloperConsent developerConsent_;
            private PiiOuterClass.Pii pii_;
            private Timestamp sdkStartTime_;
            private ByteString sessionToken_;
            private TestDataOuterClass.TestData testData_;
            private TimestampsOuterClass.Timestamps timestamps_;
            private int webviewVersion_;

            public static final class a extends GeneratedMessageLite.b<SharedData, a> implements c {
                private a() {
                    super(SharedData.DEFAULT_INSTANCE);
                }

                /* synthetic */ a(a aVar) {
                    this();
                }

                public a b(Timestamp timestamp) {
                    copyOnWrite();
                    ((SharedData) this.instance).setAppStartTime(timestamp);
                    return this;
                }

                public a d(DeveloperConsentOuterClass.DeveloperConsent developerConsent) {
                    copyOnWrite();
                    ((SharedData) this.instance).setDeveloperConsent(developerConsent);
                    return this;
                }

                public a e(PiiOuterClass.Pii pii) {
                    copyOnWrite();
                    ((SharedData) this.instance).setPii(pii);
                    return this;
                }

                public a f(Timestamp timestamp) {
                    copyOnWrite();
                    ((SharedData) this.instance).setSdkStartTime(timestamp);
                    return this;
                }

                public a g(ByteString byteString) {
                    copyOnWrite();
                    ((SharedData) this.instance).setSessionToken(byteString);
                    return this;
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public Timestamp getAppStartTime() {
                    return ((SharedData) this.instance).getAppStartTime();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
                    return ((SharedData) this.instance).getDeveloperConsent();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public PiiOuterClass.Pii getPii() {
                    return ((SharedData) this.instance).getPii();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public Timestamp getSdkStartTime() {
                    return ((SharedData) this.instance).getSdkStartTime();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public TestDataOuterClass.TestData getTestData() {
                    return ((SharedData) this.instance).getTestData();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public TimestampsOuterClass.Timestamps getTimestamps() {
                    return ((SharedData) this.instance).getTimestamps();
                }

                public a h(TimestampsOuterClass.Timestamps timestamps) {
                    copyOnWrite();
                    ((SharedData) this.instance).setTimestamps(timestamps);
                    return this;
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public boolean hasAppStartTime() {
                    return ((SharedData) this.instance).hasAppStartTime();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public boolean hasDeveloperConsent() {
                    return ((SharedData) this.instance).hasDeveloperConsent();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public boolean hasPii() {
                    return ((SharedData) this.instance).hasPii();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public boolean hasSdkStartTime() {
                    return ((SharedData) this.instance).hasSdkStartTime();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public boolean hasTestData() {
                    return ((SharedData) this.instance).hasTestData();
                }

                @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
                public boolean hasTimestamps() {
                    return ((SharedData) this.instance).hasTimestamps();
                }
            }

            static {
                SharedData sharedData = new SharedData();
                DEFAULT_INSTANCE = sharedData;
                GeneratedMessageLite.registerDefaultInstance(SharedData.class, sharedData);
            }

            private SharedData() {
                ByteString byteString = ByteString.EMPTY;
                this.sessionToken_ = byteString;
                this.currentState_ = byteString;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAppStartTime() {
                this.appStartTime_ = null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCurrentState() {
                this.bitField0_ &= -17;
                this.currentState_ = getDefaultInstance().getCurrentState();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearDeveloperConsent() {
                this.developerConsent_ = null;
                this.bitField0_ &= -5;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPii() {
                this.pii_ = null;
                this.bitField0_ &= -3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSdkStartTime() {
                this.sdkStartTime_ = null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSessionToken() {
                this.bitField0_ &= -2;
                this.sessionToken_ = getDefaultInstance().getSessionToken();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTestData() {
                this.testData_ = null;
                this.bitField0_ &= -33;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTimestamps() {
                this.timestamps_ = null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearWebviewVersion() {
                this.bitField0_ &= -9;
                this.webviewVersion_ = 0;
            }

            public static SharedData getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAppStartTime(Timestamp timestamp) {
                timestamp.getClass();
                Timestamp timestamp2 = this.appStartTime_;
                if (timestamp2 == null || timestamp2 == Timestamp.getDefaultInstance()) {
                    this.appStartTime_ = timestamp;
                } else {
                    this.appStartTime_ = Timestamp.newBuilder(this.appStartTime_).mergeFrom(timestamp).buildPartial();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeDeveloperConsent(DeveloperConsentOuterClass.DeveloperConsent developerConsent) {
                developerConsent.getClass();
                DeveloperConsentOuterClass.DeveloperConsent developerConsent2 = this.developerConsent_;
                if (developerConsent2 == null || developerConsent2 == DeveloperConsentOuterClass.DeveloperConsent.getDefaultInstance()) {
                    this.developerConsent_ = developerConsent;
                } else {
                    this.developerConsent_ = DeveloperConsentOuterClass.DeveloperConsent.newBuilder(this.developerConsent_).mergeFrom(developerConsent).buildPartial();
                }
                this.bitField0_ |= 4;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergePii(PiiOuterClass.Pii pii) {
                pii.getClass();
                PiiOuterClass.Pii pii2 = this.pii_;
                if (pii2 == null || pii2 == PiiOuterClass.Pii.getDefaultInstance()) {
                    this.pii_ = pii;
                } else {
                    this.pii_ = PiiOuterClass.Pii.newBuilder(this.pii_).mergeFrom(pii).buildPartial();
                }
                this.bitField0_ |= 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeSdkStartTime(Timestamp timestamp) {
                timestamp.getClass();
                Timestamp timestamp2 = this.sdkStartTime_;
                if (timestamp2 == null || timestamp2 == Timestamp.getDefaultInstance()) {
                    this.sdkStartTime_ = timestamp;
                } else {
                    this.sdkStartTime_ = Timestamp.newBuilder(this.sdkStartTime_).mergeFrom(timestamp).buildPartial();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeTestData(TestDataOuterClass.TestData testData) {
                testData.getClass();
                TestDataOuterClass.TestData testData2 = this.testData_;
                if (testData2 == null || testData2 == TestDataOuterClass.TestData.getDefaultInstance()) {
                    this.testData_ = testData;
                } else {
                    this.testData_ = TestDataOuterClass.TestData.newBuilder(this.testData_).mergeFrom(testData).buildPartial();
                }
                this.bitField0_ |= 32;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeTimestamps(TimestampsOuterClass.Timestamps timestamps) {
                timestamps.getClass();
                TimestampsOuterClass.Timestamps timestamps2 = this.timestamps_;
                if (timestamps2 == null || timestamps2 == TimestampsOuterClass.Timestamps.getDefaultInstance()) {
                    this.timestamps_ = timestamps;
                } else {
                    this.timestamps_ = TimestampsOuterClass.Timestamps.newBuilder(this.timestamps_).mergeFrom(timestamps).buildPartial();
                }
            }

            public static a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static a newBuilder(SharedData sharedData) {
                return DEFAULT_INSTANCE.createBuilder(sharedData);
            }

            public static SharedData parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (SharedData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static SharedData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (SharedData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static SharedData parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static SharedData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static SharedData parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static SharedData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static SharedData parseFrom(InputStream inputStream) throws IOException {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static SharedData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static SharedData parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static SharedData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static SharedData parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static SharedData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
                return (SharedData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static g1<SharedData> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAppStartTime(Timestamp timestamp) {
                timestamp.getClass();
                this.appStartTime_ = timestamp;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCurrentState(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 16;
                this.currentState_ = byteString;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setDeveloperConsent(DeveloperConsentOuterClass.DeveloperConsent developerConsent) {
                developerConsent.getClass();
                this.developerConsent_ = developerConsent;
                this.bitField0_ |= 4;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPii(PiiOuterClass.Pii pii) {
                pii.getClass();
                this.pii_ = pii;
                this.bitField0_ |= 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSdkStartTime(Timestamp timestamp) {
                timestamp.getClass();
                this.sdkStartTime_ = timestamp;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSessionToken(ByteString byteString) {
                byteString.getClass();
                this.bitField0_ |= 1;
                this.sessionToken_ = byteString;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTestData(TestDataOuterClass.TestData testData) {
                testData.getClass();
                this.testData_ = testData;
                this.bitField0_ |= 32;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTimestamps(TimestampsOuterClass.Timestamps timestamps) {
                timestamps.getClass();
                this.timestamps_ = timestamps;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setWebviewVersion(int i) {
                this.bitField0_ |= 8;
                this.webviewVersion_ = i;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                a aVar = null;
                switch (a.a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new SharedData();
                    case 2:
                        return new a(aVar);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ည\u0000\u0002\t\u0003ဉ\u0001\u0004ဉ\u0002\u0005င\u0003\u0006ည\u0004\u0007ဉ\u0005\b\t\t\t", new Object[]{"bitField0_", "sessionToken_", "timestamps_", "pii_", "developerConsent_", "webviewVersion_", "currentState_", "testData_", "appStartTime_", "sdkStartTime_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        g1<SharedData> cVar = PARSER;
                        if (cVar == null) {
                            synchronized (SharedData.class) {
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

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public Timestamp getAppStartTime() {
                Timestamp timestamp = this.appStartTime_;
                return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
            }

            public ByteString getCurrentState() {
                return this.currentState_;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
                DeveloperConsentOuterClass.DeveloperConsent developerConsent = this.developerConsent_;
                return developerConsent == null ? DeveloperConsentOuterClass.DeveloperConsent.getDefaultInstance() : developerConsent;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public PiiOuterClass.Pii getPii() {
                PiiOuterClass.Pii pii = this.pii_;
                return pii == null ? PiiOuterClass.Pii.getDefaultInstance() : pii;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public Timestamp getSdkStartTime() {
                Timestamp timestamp = this.sdkStartTime_;
                return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
            }

            public ByteString getSessionToken() {
                return this.sessionToken_;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public TestDataOuterClass.TestData getTestData() {
                TestDataOuterClass.TestData testData = this.testData_;
                return testData == null ? TestDataOuterClass.TestData.getDefaultInstance() : testData;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public TimestampsOuterClass.Timestamps getTimestamps() {
                TimestampsOuterClass.Timestamps timestamps = this.timestamps_;
                return timestamps == null ? TimestampsOuterClass.Timestamps.getDefaultInstance() : timestamps;
            }

            public int getWebviewVersion() {
                return this.webviewVersion_;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public boolean hasAppStartTime() {
                return this.appStartTime_ != null;
            }

            public boolean hasCurrentState() {
                return (this.bitField0_ & 16) != 0;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public boolean hasDeveloperConsent() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public boolean hasPii() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public boolean hasSdkStartTime() {
                return this.sdkStartTime_ != null;
            }

            public boolean hasSessionToken() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public boolean hasTestData() {
                return (this.bitField0_ & 32) != 0;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.UniversalRequest.c
            public boolean hasTimestamps() {
                return this.timestamps_ != null;
            }

            public boolean hasWebviewVersion() {
                return (this.bitField0_ & 8) != 0;
            }
        }

        public static final class a extends GeneratedMessageLite.b<UniversalRequest, a> implements b {
            private a() {
                super(UniversalRequest.DEFAULT_INSTANCE);
            }

            /* synthetic */ a(a aVar) {
                this();
            }

            public a b(Payload payload) {
                copyOnWrite();
                ((UniversalRequest) this.instance).setPayload(payload);
                return this;
            }

            public a d(SharedData sharedData) {
                copyOnWrite();
                ((UniversalRequest) this.instance).setSharedData(sharedData);
                return this;
            }

            @Override // gateway.v1.UniversalRequestOuterClass.b
            public Payload getPayload() {
                return ((UniversalRequest) this.instance).getPayload();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.b
            public SharedData getSharedData() {
                return ((UniversalRequest) this.instance).getSharedData();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.b
            public boolean hasPayload() {
                return ((UniversalRequest) this.instance).hasPayload();
            }

            @Override // gateway.v1.UniversalRequestOuterClass.b
            public boolean hasSharedData() {
                return ((UniversalRequest) this.instance).hasSharedData();
            }
        }

        public interface b extends com.google.protobuf.r0 {
            AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequest();

            AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequest();

            AdRequestOuterClass.AdRequest getAdRequest();

            DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequest();

            GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequest();

            InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequest();

            InitializationRequestOuterClass.InitializationRequest getInitializationRequest();

            OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEvent();

            PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequest();

            boolean hasAdDataRefreshRequest();

            boolean hasAdPlayerConfigRequest();

            boolean hasAdRequest();

            boolean hasDiagnosticEventRequest();

            boolean hasGetTokenEventRequest();

            boolean hasInitializationCompletedEventRequest();

            boolean hasInitializationRequest();

            boolean hasOperativeEvent();

            boolean hasPrivacyUpdateRequest();
        }

        public interface c extends com.google.protobuf.r0 {
            Timestamp getAppStartTime();

            DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent();

            PiiOuterClass.Pii getPii();

            Timestamp getSdkStartTime();

            TestDataOuterClass.TestData getTestData();

            TimestampsOuterClass.Timestamps getTimestamps();

            boolean hasAppStartTime();

            boolean hasDeveloperConsent();

            boolean hasPii();

            boolean hasSdkStartTime();

            boolean hasTestData();

            boolean hasTimestamps();
        }

        static {
            UniversalRequest universalRequest = new UniversalRequest();
            DEFAULT_INSTANCE = universalRequest;
            GeneratedMessageLite.registerDefaultInstance(UniversalRequest.class, universalRequest);
        }

        private UniversalRequest() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayload() {
            this.payload_ = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSharedData() {
            this.sharedData_ = null;
        }

        public static UniversalRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePayload(Payload payload) {
            payload.getClass();
            Payload payload2 = this.payload_;
            if (payload2 == null || payload2 == Payload.getDefaultInstance()) {
                this.payload_ = payload;
            } else {
                this.payload_ = Payload.newBuilder(this.payload_).mergeFrom(payload).buildPartial();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSharedData(SharedData sharedData) {
            sharedData.getClass();
            SharedData sharedData2 = this.sharedData_;
            if (sharedData2 == null || sharedData2 == SharedData.getDefaultInstance()) {
                this.sharedData_ = sharedData;
            } else {
                this.sharedData_ = SharedData.newBuilder(this.sharedData_).mergeFrom(sharedData).buildPartial();
            }
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static a newBuilder(UniversalRequest universalRequest) {
            return DEFAULT_INSTANCE.createBuilder(universalRequest);
        }

        public static UniversalRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UniversalRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static UniversalRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UniversalRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static UniversalRequest parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static UniversalRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static UniversalRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static UniversalRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static UniversalRequest parseFrom(InputStream inputStream) throws IOException {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static UniversalRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static UniversalRequest parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static UniversalRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static UniversalRequest parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static UniversalRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (UniversalRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static g1<UniversalRequest> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayload(Payload payload) {
            payload.getClass();
            this.payload_ = payload;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSharedData(SharedData sharedData) {
            sharedData.getClass();
            this.sharedData_ = sharedData;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            a aVar = null;
            switch (a.a[methodToInvoke.ordinal()]) {
                case 1:
                    return new UniversalRequest();
                case 2:
                    return new a(aVar);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"sharedData_", "payload_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    g1<UniversalRequest> cVar = PARSER;
                    if (cVar == null) {
                        synchronized (UniversalRequest.class) {
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

        @Override // gateway.v1.UniversalRequestOuterClass.b
        public Payload getPayload() {
            Payload payload = this.payload_;
            return payload == null ? Payload.getDefaultInstance() : payload;
        }

        @Override // gateway.v1.UniversalRequestOuterClass.b
        public SharedData getSharedData() {
            SharedData sharedData = this.sharedData_;
            return sharedData == null ? SharedData.getDefaultInstance() : sharedData;
        }

        @Override // gateway.v1.UniversalRequestOuterClass.b
        public boolean hasPayload() {
            return this.payload_ != null;
        }

        @Override // gateway.v1.UniversalRequestOuterClass.b
        public boolean hasSharedData() {
            return this.sharedData_ != null;
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
        UniversalRequest.Payload getPayload();

        UniversalRequest.SharedData getSharedData();

        boolean hasPayload();

        boolean hasSharedData();
    }

    private UniversalRequestOuterClass() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
