package defpackage;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.d0;
import com.google.protobuf.g1;
import com.google.protobuf.r0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class UniversalRequestStoreOuterClass {

    /* JADX INFO: loaded from: classes4.dex */
    public static final class UniversalRequestStore extends GeneratedMessageLite<UniversalRequestStore, a> implements r0 {
        private static final UniversalRequestStore DEFAULT_INSTANCE;
        private static volatile g1<UniversalRequestStore> PARSER = null;
        public static final int UNIVERSAL_REQUEST_MAP_FIELD_NUMBER = 1;
        private MapFieldLite<String, ByteString> universalRequestMap_ = MapFieldLite.emptyMapField();

        public static final class a extends GeneratedMessageLite.b<UniversalRequestStore, a> implements r0 {
            private a() {
                super(UniversalRequestStore.DEFAULT_INSTANCE);
            }

            /* synthetic */ a(a aVar) {
                this();
            }

            public a b(String str, ByteString byteString) {
                str.getClass();
                byteString.getClass();
                copyOnWrite();
                ((UniversalRequestStore) this.instance).getMutableUniversalRequestMapMap().put(str, byteString);
                return this;
            }

            public a d(String str) {
                str.getClass();
                copyOnWrite();
                ((UniversalRequestStore) this.instance).getMutableUniversalRequestMapMap().remove(str);
                return this;
            }
        }

        private static final class b {
            static final MapEntryLite<String, ByteString> a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.BYTES, ByteString.EMPTY);
        }

        static {
            UniversalRequestStore universalRequestStore = new UniversalRequestStore();
            DEFAULT_INSTANCE = universalRequestStore;
            GeneratedMessageLite.registerDefaultInstance(UniversalRequestStore.class, universalRequestStore);
        }

        private UniversalRequestStore() {
        }

        public static UniversalRequestStore getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, ByteString> getMutableUniversalRequestMapMap() {
            return internalGetMutableUniversalRequestMap();
        }

        private MapFieldLite<String, ByteString> internalGetMutableUniversalRequestMap() {
            if (!this.universalRequestMap_.isMutable()) {
                this.universalRequestMap_ = this.universalRequestMap_.mutableCopy();
            }
            return this.universalRequestMap_;
        }

        private MapFieldLite<String, ByteString> internalGetUniversalRequestMap() {
            return this.universalRequestMap_;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static a newBuilder(UniversalRequestStore universalRequestStore) {
            return DEFAULT_INSTANCE.createBuilder(universalRequestStore);
        }

        public static UniversalRequestStore parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UniversalRequestStore) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static UniversalRequestStore parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UniversalRequestStore) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static UniversalRequestStore parseFrom(ByteString byteString) throws d0 {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static UniversalRequestStore parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0 {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static UniversalRequestStore parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static UniversalRequestStore parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static UniversalRequestStore parseFrom(InputStream inputStream) throws IOException {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static UniversalRequestStore parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static UniversalRequestStore parseFrom(ByteBuffer byteBuffer) throws d0 {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static UniversalRequestStore parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws d0 {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static UniversalRequestStore parseFrom(byte[] bArr) throws d0 {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static UniversalRequestStore parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0 {
            return (UniversalRequestStore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static g1<UniversalRequestStore> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public boolean containsUniversalRequestMap(String str) {
            str.getClass();
            return internalGetUniversalRequestMap().containsKey(str);
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            a aVar = null;
            switch (a.a[methodToInvoke.ordinal()]) {
                case 1:
                    return new UniversalRequestStore();
                case 2:
                    return new a(aVar);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"universalRequestMap_", b.a});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    g1<UniversalRequestStore> cVar = PARSER;
                    if (cVar == null) {
                        synchronized (UniversalRequestStore.class) {
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

        @Deprecated
        public Map<String, ByteString> getUniversalRequestMap() {
            return getUniversalRequestMapMap();
        }

        public int getUniversalRequestMapCount() {
            return internalGetUniversalRequestMap().size();
        }

        public Map<String, ByteString> getUniversalRequestMapMap() {
            return Collections.unmodifiableMap(internalGetUniversalRequestMap());
        }

        public ByteString getUniversalRequestMapOrDefault(String str, ByteString byteString) {
            str.getClass();
            MapFieldLite<String, ByteString> mapFieldLiteInternalGetUniversalRequestMap = internalGetUniversalRequestMap();
            return mapFieldLiteInternalGetUniversalRequestMap.containsKey(str) ? mapFieldLiteInternalGetUniversalRequestMap.get(str) : byteString;
        }

        public ByteString getUniversalRequestMapOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, ByteString> mapFieldLiteInternalGetUniversalRequestMap = internalGetUniversalRequestMap();
            if (mapFieldLiteInternalGetUniversalRequestMap.containsKey(str)) {
                return mapFieldLiteInternalGetUniversalRequestMap.get(str);
            }
            throw new IllegalArgumentException();
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

    private UniversalRequestStoreOuterClass() {
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
