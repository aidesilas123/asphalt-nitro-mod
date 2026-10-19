package gateway.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.g1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DeveloperConsentOuterClass {

    public static final class DeveloperConsent extends GeneratedMessageLite<DeveloperConsent, a> implements com.google.protobuf.r0 {
        private static final DeveloperConsent DEFAULT_INSTANCE;
        public static final int OPTIONS_FIELD_NUMBER = 1;
        private static volatile g1<DeveloperConsent> PARSER;
        private Internal.j<DeveloperConsentOption> options_ = GeneratedMessageLite.emptyProtobufList();

        public static final class a extends GeneratedMessageLite.b<DeveloperConsent, a> implements com.google.protobuf.r0 {
            private a() {
                super(DeveloperConsent.DEFAULT_INSTANCE);
            }

            /* synthetic */ a(a aVar) {
                this();
            }

            public a b(Iterable<? extends DeveloperConsentOption> iterable) {
                copyOnWrite();
                ((DeveloperConsent) this.instance).addAllOptions(iterable);
                return this;
            }

            public List<DeveloperConsentOption> getOptionsList() {
                return Collections.unmodifiableList(((DeveloperConsent) this.instance).getOptionsList());
            }
        }

        static {
            DeveloperConsent developerConsent = new DeveloperConsent();
            DEFAULT_INSTANCE = developerConsent;
            GeneratedMessageLite.registerDefaultInstance(DeveloperConsent.class, developerConsent);
        }

        private DeveloperConsent() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOptions(Iterable<? extends DeveloperConsentOption> iterable) {
            ensureOptionsIsMutable();
            com.google.protobuf.a.addAll((Iterable) iterable, (List) this.options_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOptions(int i, DeveloperConsentOption developerConsentOption) {
            developerConsentOption.getClass();
            ensureOptionsIsMutable();
            this.options_.add(i, developerConsentOption);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOptions(DeveloperConsentOption developerConsentOption) {
            developerConsentOption.getClass();
            ensureOptionsIsMutable();
            this.options_.add(developerConsentOption);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOptions() {
            this.options_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureOptionsIsMutable() {
            Internal.j<DeveloperConsentOption> jVar = this.options_;
            if (jVar.isModifiable()) {
                return;
            }
            this.options_ = GeneratedMessageLite.mutableCopy(jVar);
        }

        public static DeveloperConsent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static a newBuilder(DeveloperConsent developerConsent) {
            return DEFAULT_INSTANCE.createBuilder(developerConsent);
        }

        public static DeveloperConsent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DeveloperConsent) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DeveloperConsent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeveloperConsent) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static DeveloperConsent parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static DeveloperConsent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static DeveloperConsent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static DeveloperConsent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static DeveloperConsent parseFrom(InputStream inputStream) throws IOException {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DeveloperConsent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static DeveloperConsent parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static DeveloperConsent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static DeveloperConsent parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static DeveloperConsent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (DeveloperConsent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static g1<DeveloperConsent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOptions(int i) {
            ensureOptionsIsMutable();
            this.options_.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOptions(int i, DeveloperConsentOption developerConsentOption) {
            developerConsentOption.getClass();
            ensureOptionsIsMutable();
            this.options_.set(i, developerConsentOption);
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            a aVar = null;
            switch (a.a[methodToInvoke.ordinal()]) {
                case 1:
                    return new DeveloperConsent();
                case 2:
                    return new a(aVar);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"options_", DeveloperConsentOption.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    g1<DeveloperConsent> cVar = PARSER;
                    if (cVar == null) {
                        synchronized (DeveloperConsent.class) {
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

        public DeveloperConsentOption getOptions(int i) {
            return this.options_.get(i);
        }

        public int getOptionsCount() {
            return this.options_.size();
        }

        public List<DeveloperConsentOption> getOptionsList() {
            return this.options_;
        }

        public b getOptionsOrBuilder(int i) {
            return this.options_.get(i);
        }

        public List<? extends b> getOptionsOrBuilderList() {
            return this.options_;
        }
    }

    public enum DeveloperConsentChoice implements Internal.c {
        DEVELOPER_CONSENT_CHOICE_UNSPECIFIED(0),
        DEVELOPER_CONSENT_CHOICE_TRUE(1),
        DEVELOPER_CONSENT_CHOICE_FALSE(2),
        UNRECOGNIZED(-1);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Internal.d<DeveloperConsentChoice> f8125e = new a();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f8127g;

        class a implements Internal.d<DeveloperConsentChoice> {
            a() {
            }

            @Override // com.google.protobuf.Internal.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public DeveloperConsentChoice findValueByNumber(int i) {
                return DeveloperConsentChoice.forNumber(i);
            }
        }

        private static final class b implements Internal.e {
            static final Internal.e a = new b();

            private b() {
            }

            @Override // com.google.protobuf.Internal.e
            public boolean isInRange(int i) {
                return DeveloperConsentChoice.forNumber(i) != null;
            }
        }

        DeveloperConsentChoice(int i) {
            this.f8127g = i;
        }

        public static DeveloperConsentChoice forNumber(int i) {
            if (i == 0) {
                return DEVELOPER_CONSENT_CHOICE_UNSPECIFIED;
            }
            if (i == 1) {
                return DEVELOPER_CONSENT_CHOICE_TRUE;
            }
            if (i != 2) {
                return null;
            }
            return DEVELOPER_CONSENT_CHOICE_FALSE;
        }

        public static Internal.d<DeveloperConsentChoice> internalGetValueMap() {
            return f8125e;
        }

        public static Internal.e internalGetVerifier() {
            return b.a;
        }

        @Deprecated
        public static DeveloperConsentChoice valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.Internal.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.f8127g;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    public static final class DeveloperConsentOption extends GeneratedMessageLite<DeveloperConsentOption, a> implements b {
        public static final int CUSTOM_TYPE_FIELD_NUMBER = 2;
        private static final DeveloperConsentOption DEFAULT_INSTANCE;
        private static volatile g1<DeveloperConsentOption> PARSER = null;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 3;
        private int bitField0_;
        private String customType_ = "";
        private int type_;
        private int value_;

        public static final class a extends GeneratedMessageLite.b<DeveloperConsentOption, a> implements b {
            private a() {
                super(DeveloperConsentOption.DEFAULT_INSTANCE);
            }

            /* synthetic */ a(a aVar) {
                this();
            }

            public DeveloperConsentType b() {
                return ((DeveloperConsentOption) this.instance).getType();
            }

            public a d(String str) {
                copyOnWrite();
                ((DeveloperConsentOption) this.instance).setCustomType(str);
                return this;
            }

            public a e(DeveloperConsentType developerConsentType) {
                copyOnWrite();
                ((DeveloperConsentOption) this.instance).setType(developerConsentType);
                return this;
            }

            public a f(DeveloperConsentChoice developerConsentChoice) {
                copyOnWrite();
                ((DeveloperConsentOption) this.instance).setValue(developerConsentChoice);
                return this;
            }
        }

        static {
            DeveloperConsentOption developerConsentOption = new DeveloperConsentOption();
            DEFAULT_INSTANCE = developerConsentOption;
            GeneratedMessageLite.registerDefaultInstance(DeveloperConsentOption.class, developerConsentOption);
        }

        private DeveloperConsentOption() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCustomType() {
            this.bitField0_ &= -2;
            this.customType_ = getDefaultInstance().getCustomType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearType() {
            this.type_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0;
        }

        public static DeveloperConsentOption getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static a newBuilder(DeveloperConsentOption developerConsentOption) {
            return DEFAULT_INSTANCE.createBuilder(developerConsentOption);
        }

        public static DeveloperConsentOption parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DeveloperConsentOption) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DeveloperConsentOption parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeveloperConsentOption) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static DeveloperConsentOption parseFrom(ByteString byteString) throws com.google.protobuf.d0 {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static DeveloperConsentOption parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static DeveloperConsentOption parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static DeveloperConsentOption parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static DeveloperConsentOption parseFrom(InputStream inputStream) throws IOException {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DeveloperConsentOption parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static DeveloperConsentOption parseFrom(ByteBuffer byteBuffer) throws com.google.protobuf.d0 {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static DeveloperConsentOption parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static DeveloperConsentOption parseFrom(byte[] bArr) throws com.google.protobuf.d0 {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static DeveloperConsentOption parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws com.google.protobuf.d0 {
            return (DeveloperConsentOption) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static g1<DeveloperConsentOption> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCustomType(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.customType_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCustomTypeBytes(ByteString byteString) {
            com.google.protobuf.a.checkByteStringIsUtf8(byteString);
            this.customType_ = byteString.toStringUtf8();
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(DeveloperConsentType developerConsentType) {
            this.type_ = developerConsentType.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTypeValue(int i) {
            this.type_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(DeveloperConsentChoice developerConsentChoice) {
            this.value_ = developerConsentChoice.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValueValue(int i) {
            this.value_ = i;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            a aVar = null;
            switch (a.a[methodToInvoke.ordinal()]) {
                case 1:
                    return new DeveloperConsentOption();
                case 2:
                    return new a(aVar);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002ለ\u0000\u0003\f", new Object[]{"bitField0_", "type_", "customType_", "value_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    g1<DeveloperConsentOption> cVar = PARSER;
                    if (cVar == null) {
                        synchronized (DeveloperConsentOption.class) {
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

        public String getCustomType() {
            return this.customType_;
        }

        public ByteString getCustomTypeBytes() {
            return ByteString.copyFromUtf8(this.customType_);
        }

        public DeveloperConsentType getType() {
            DeveloperConsentType developerConsentTypeForNumber = DeveloperConsentType.forNumber(this.type_);
            return developerConsentTypeForNumber == null ? DeveloperConsentType.UNRECOGNIZED : developerConsentTypeForNumber;
        }

        public int getTypeValue() {
            return this.type_;
        }

        public DeveloperConsentChoice getValue() {
            DeveloperConsentChoice developerConsentChoiceForNumber = DeveloperConsentChoice.forNumber(this.value_);
            return developerConsentChoiceForNumber == null ? DeveloperConsentChoice.UNRECOGNIZED : developerConsentChoiceForNumber;
        }

        public int getValueValue() {
            return this.value_;
        }

        public boolean hasCustomType() {
            return (this.bitField0_ & 1) != 0;
        }
    }

    public enum DeveloperConsentType implements Internal.c {
        DEVELOPER_CONSENT_TYPE_UNSPECIFIED(0),
        DEVELOPER_CONSENT_TYPE_CUSTOM(1),
        DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL(2),
        DEVELOPER_CONSENT_TYPE_PIPL_CONSENT(3),
        DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT(4),
        DEVELOPER_CONSENT_TYPE_GDPR_CONSENT(5),
        DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT(6),
        UNRECOGNIZED(-1);

        private static final Internal.d<DeveloperConsentType> i = new a();
        private final int k;

        class a implements Internal.d<DeveloperConsentType> {
            a() {
            }

            @Override // com.google.protobuf.Internal.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public DeveloperConsentType findValueByNumber(int i) {
                return DeveloperConsentType.forNumber(i);
            }
        }

        private static final class b implements Internal.e {
            static final Internal.e a = new b();

            private b() {
            }

            @Override // com.google.protobuf.Internal.e
            public boolean isInRange(int i) {
                return DeveloperConsentType.forNumber(i) != null;
            }
        }

        DeveloperConsentType(int i2) {
            this.k = i2;
        }

        public static DeveloperConsentType forNumber(int i2) {
            switch (i2) {
                case 0:
                    return DEVELOPER_CONSENT_TYPE_UNSPECIFIED;
                case 1:
                    return DEVELOPER_CONSENT_TYPE_CUSTOM;
                case 2:
                    return DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL;
                case 3:
                    return DEVELOPER_CONSENT_TYPE_PIPL_CONSENT;
                case 4:
                    return DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT;
                case 5:
                    return DEVELOPER_CONSENT_TYPE_GDPR_CONSENT;
                case 6:
                    return DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT;
                default:
                    return null;
            }
        }

        public static Internal.d<DeveloperConsentType> internalGetValueMap() {
            return i;
        }

        public static Internal.e internalGetVerifier() {
            return b.a;
        }

        @Deprecated
        public static DeveloperConsentType valueOf(int i2) {
            return forNumber(i2);
        }

        @Override // com.google.protobuf.Internal.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.k;
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
    }

    private DeveloperConsentOuterClass() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
