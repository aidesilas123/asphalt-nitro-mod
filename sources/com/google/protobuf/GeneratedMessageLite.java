package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.b;
import com.google.protobuf.Internal;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.h;
import com.google.protobuf.q0;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends com.google.protobuf.a<MessageType, BuilderType> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.getDefaultInstance();

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements e<MessageType, BuilderType> {
        protected FieldSet<f> extensions = FieldSet.emptySet();

        protected class a {
            private final Iterator<Map.Entry<f, Object>> iter;
            private final boolean messageSetWireFormat;
            private Map.Entry<f, Object> next;

            private a(boolean z) {
                Iterator it = ExtendableMessage.this.extensions.iterator();
                this.iter = it;
                if (it.hasNext()) {
                    this.next = (Map.Entry) it.next();
                }
                this.messageSetWireFormat = z;
            }

            /* synthetic */ a(ExtendableMessage extendableMessage, boolean z, a aVar) {
                this(z);
            }

            public void writeUntil(int i, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<f, Object> entry = this.next;
                    if (entry == null || entry.getKey().getNumber() >= i) {
                        return;
                    }
                    f key = this.next.getKey();
                    if (this.messageSetWireFormat && key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                        codedOutputStream.writeMessageSetExtension(key.getNumber(), (q0) this.next.getValue());
                    } else {
                        FieldSet.writeField(key, this.next.getValue(), codedOutputStream);
                    }
                    if (this.iter.hasNext()) {
                        this.next = this.iter.next();
                    } else {
                        this.next = null;
                    }
                }
            }
        }

        private void eagerlyMergeMessageSetExtension(CodedInputStream codedInputStream, g<?, ?> gVar, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            parseExtension(codedInputStream, extensionRegistryLite, gVar, WireFormat.makeTag(i, 2), i);
        }

        private void mergeMessageSetExtensionFromBytes(ByteString byteString, ExtensionRegistryLite extensionRegistryLite, g<?, ?> gVar) throws IOException {
            q0 q0Var = (q0) this.extensions.getField(gVar.descriptor);
            q0.a builder = q0Var != null ? q0Var.toBuilder() : null;
            if (builder == null) {
                builder = gVar.getMessageDefaultInstance().newBuilderForType();
            }
            builder.mergeFrom(byteString, extensionRegistryLite);
            ensureExtensionsAreMutable().setField(gVar.descriptor, gVar.singularToFieldSetType(builder.build()));
        }

        private <MessageType extends q0> void mergeMessageSetExtensionFromCodedStream(MessageType messagetype, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int uInt32 = 0;
            ByteString bytes = null;
            g<?, ?> gVarFindLiteExtensionByNumber = null;
            while (true) {
                int tag = codedInputStream.readTag();
                if (tag == 0) {
                    break;
                }
                if (tag == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                    uInt32 = codedInputStream.readUInt32();
                    if (uInt32 != 0) {
                        gVarFindLiteExtensionByNumber = extensionRegistryLite.findLiteExtensionByNumber(messagetype, uInt32);
                    }
                } else if (tag == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                    if (uInt32 == 0 || gVarFindLiteExtensionByNumber == null) {
                        bytes = codedInputStream.readBytes();
                    } else {
                        eagerlyMergeMessageSetExtension(codedInputStream, gVarFindLiteExtensionByNumber, extensionRegistryLite, uInt32);
                        bytes = null;
                    }
                } else if (!codedInputStream.skipField(tag)) {
                    break;
                }
            }
            codedInputStream.checkLastTagWas(WireFormat.MESSAGE_SET_ITEM_END_TAG);
            if (bytes == null || uInt32 == 0) {
                return;
            }
            if (gVarFindLiteExtensionByNumber != null) {
                mergeMessageSetExtensionFromBytes(bytes, extensionRegistryLite, gVarFindLiteExtensionByNumber);
            } else {
                mergeLengthDelimitedField(uInt32, bytes);
            }
        }

        private boolean parseExtension(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, g<?, ?> gVar, int i, int i2) throws IOException {
            boolean z;
            boolean z2;
            Object objBuild;
            q0 q0Var;
            int tagWireType = WireFormat.getTagWireType(i);
            if (gVar == null) {
                z = true;
                z2 = false;
            } else if (tagWireType == FieldSet.getWireFormatForFieldType(gVar.descriptor.getLiteType(), false)) {
                z = false;
                z2 = false;
            } else {
                f fVar = gVar.descriptor;
                if (fVar.isRepeated && fVar.type.isPackable() && tagWireType == FieldSet.getWireFormatForFieldType(gVar.descriptor.getLiteType(), true)) {
                    z = false;
                    z2 = true;
                }
                z = true;
                z2 = false;
            }
            if (z) {
                return parseUnknownField(i, codedInputStream);
            }
            ensureExtensionsAreMutable();
            if (z2) {
                int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                if (gVar.descriptor.getLiteType() == WireFormat.FieldType.ENUM) {
                    while (codedInputStream.getBytesUntilLimit() > 0) {
                        Internal.c cVarFindValueByNumber = gVar.descriptor.getEnumType().findValueByNumber(codedInputStream.readEnum());
                        if (cVarFindValueByNumber == null) {
                            return true;
                        }
                        this.extensions.addRepeatedField(gVar.descriptor, gVar.singularToFieldSetType(cVarFindValueByNumber));
                    }
                } else {
                    while (codedInputStream.getBytesUntilLimit() > 0) {
                        this.extensions.addRepeatedField(gVar.descriptor, FieldSet.readPrimitiveField(codedInputStream, gVar.descriptor.getLiteType(), false));
                    }
                }
                codedInputStream.popLimit(iPushLimit);
            } else {
                int i3 = a.$SwitchMap$com$google$protobuf$WireFormat$JavaType[gVar.descriptor.getLiteJavaType().ordinal()];
                if (i3 == 1) {
                    q0.a aVarNewBuilderForType = null;
                    if (!gVar.descriptor.isRepeated() && (q0Var = (q0) this.extensions.getField(gVar.descriptor)) != null) {
                        aVarNewBuilderForType = q0Var.toBuilder();
                    }
                    if (aVarNewBuilderForType == null) {
                        aVarNewBuilderForType = gVar.getMessageDefaultInstance().newBuilderForType();
                    }
                    if (gVar.descriptor.getLiteType() == WireFormat.FieldType.GROUP) {
                        codedInputStream.readGroup(gVar.getNumber(), aVarNewBuilderForType, extensionRegistryLite);
                    } else {
                        codedInputStream.readMessage(aVarNewBuilderForType, extensionRegistryLite);
                    }
                    objBuild = aVarNewBuilderForType.build();
                } else if (i3 != 2) {
                    objBuild = FieldSet.readPrimitiveField(codedInputStream, gVar.descriptor.getLiteType(), false);
                } else {
                    int i4 = codedInputStream.readEnum();
                    Internal.c cVarFindValueByNumber2 = gVar.descriptor.getEnumType().findValueByNumber(i4);
                    if (cVarFindValueByNumber2 == null) {
                        mergeVarintField(i2, i4);
                        return true;
                    }
                    objBuild = cVarFindValueByNumber2;
                }
                if (gVar.descriptor.isRepeated()) {
                    this.extensions.addRepeatedField(gVar.descriptor, gVar.singularToFieldSetType(objBuild));
                } else {
                    this.extensions.setField(gVar.descriptor, gVar.singularToFieldSetType(objBuild));
                }
            }
            return true;
        }

        private void verifyExtensionContainingType(g<MessageType, ?> gVar) {
            if (gVar.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        FieldSet<f> ensureExtensionsAreMutable() {
            if (this.extensions.isImmutable()) {
                this.extensions = this.extensions.m201clone();
            }
            return this.extensions;
        }

        protected boolean extensionsAreInitialized() {
            return this.extensions.isInitialized();
        }

        protected int extensionsSerializedSize() {
            return this.extensions.getSerializedSize();
        }

        protected int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.getMessageSetSerializedSize();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.a, com.google.protobuf.q0, com.google.protobuf.r0
        public /* bridge */ /* synthetic */ q0 getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> Type getExtension(t<MessageType, Type> tVar) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            Object field = this.extensions.getField(gVarCheckIsLite.descriptor);
            return field == null ? gVarCheckIsLite.defaultValue : (Type) gVarCheckIsLite.fromFieldSetType(field);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> Type getExtension(t<MessageType, List<Type>> tVar, int i) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            return (Type) gVarCheckIsLite.singularFromFieldSetType(this.extensions.getRepeatedField(gVarCheckIsLite.descriptor, i));
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> int getExtensionCount(t<MessageType, List<Type>> tVar) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            return this.extensions.getRepeatedFieldCount(gVarCheckIsLite.descriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> boolean hasExtension(t<MessageType, Type> tVar) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            return this.extensions.hasField(gVarCheckIsLite.descriptor);
        }

        protected final void mergeExtensionFields(MessageType messagetype) {
            if (this.extensions.isImmutable()) {
                this.extensions = this.extensions.m201clone();
            }
            this.extensions.mergeFrom(messagetype.extensions);
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.a, com.google.protobuf.q0
        public /* bridge */ /* synthetic */ q0.a newBuilderForType() {
            return super.newBuilderForType();
        }

        protected ExtendableMessage<MessageType, BuilderType>.a newExtensionWriter() {
            return new a(this, false, null);
        }

        protected ExtendableMessage<MessageType, BuilderType>.a newMessageSetExtensionWriter() {
            return new a(this, true, null);
        }

        protected <MessageType extends q0> boolean parseUnknownField(MessageType messagetype, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            int tagFieldNumber = WireFormat.getTagFieldNumber(i);
            return parseExtension(codedInputStream, extensionRegistryLite, extensionRegistryLite.findLiteExtensionByNumber(messagetype, tagFieldNumber), i, tagFieldNumber);
        }

        protected <MessageType extends q0> boolean parseUnknownFieldAsMessageSet(MessageType messagetype, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            if (i != WireFormat.MESSAGE_SET_ITEM_TAG) {
                return WireFormat.getTagWireType(i) == 2 ? parseUnknownField(messagetype, codedInputStream, extensionRegistryLite, i) : codedInputStream.skipField(i);
            }
            mergeMessageSetExtensionFromCodedStream(messagetype, codedInputStream, extensionRegistryLite);
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.a, com.google.protobuf.q0
        public /* bridge */ /* synthetic */ q0.a toBuilder() {
            return super.toBuilder();
        }
    }

    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    protected static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final Class<?> messageClass;
        private final String messageClassName;

        SerializedForm(q0 q0Var) {
            Class<?> cls = q0Var.getClass();
            this.messageClass = cls;
            this.messageClassName = cls.getName();
            this.asBytes = q0Var.toByteArray();
        }

        public static SerializedForm of(q0 q0Var) {
            return new SerializedForm(q0Var);
        }

        @Deprecated
        private Object readResolveFallback() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = resolveMessageClass().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((q0) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (d0 e2) {
                throw new RuntimeException("Unable to understand proto buffer", e2);
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e3);
            } catch (IllegalAccessException e4) {
                throw new RuntimeException("Unable to call parsePartialFrom", e4);
            } catch (NoSuchFieldException e5) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e5);
            } catch (SecurityException e6) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e6);
            }
        }

        private Class<?> resolveMessageClass() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((q0) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (d0 e2) {
                throw new RuntimeException("Unable to understand proto buffer", e2);
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e3);
            } catch (IllegalAccessException e4) {
                throw new RuntimeException("Unable to call parsePartialFrom", e4);
            } catch (NoSuchFieldException unused) {
                return readResolveFallback();
            } catch (SecurityException e5) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e5);
            }
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends a.AbstractC0277a<MessageType, BuilderType> {
        private final MessageType defaultInstance;
        protected MessageType instance;

        protected b(MessageType messagetype) {
            this.defaultInstance = messagetype;
            if (messagetype.isMutable()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.instance = (MessageType) newMutableInstance();
        }

        private static <MessageType> void mergeFromInstance(MessageType messagetype, MessageType messagetype2) {
            Protobuf.getInstance().schemaFor(messagetype).mergeFrom(messagetype, messagetype2);
        }

        private MessageType newMutableInstance() {
            return (MessageType) this.defaultInstance.newMutableInstance();
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public final MessageType build() {
            MessageType messagetype = (MessageType) buildPartial();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw a.AbstractC0277a.newUninitializedMessageException(messagetype);
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public MessageType buildPartial() {
            if (!this.instance.isMutable()) {
                return this.instance;
            }
            this.instance.makeImmutable();
            return this.instance;
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public final BuilderType clear() {
            if (this.defaultInstance.isMutable()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.instance = (MessageType) newMutableInstance();
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0277a
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BuilderType mo203clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.instance = (MessageType) buildPartial();
            return buildertype;
        }

        protected final void copyOnWrite() {
            if (this.instance.isMutable()) {
                return;
            }
            copyOnWriteInternal();
        }

        protected void copyOnWriteInternal() {
            MessageType messagetype = (MessageType) newMutableInstance();
            mergeFromInstance(messagetype, this.instance);
            this.instance = messagetype;
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a, com.google.protobuf.r0
        public MessageType getDefaultInstanceForType() {
            return this.defaultInstance;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.a.AbstractC0277a
        public BuilderType internalMergeFrom(MessageType messagetype) {
            return (BuilderType) mergeFrom((GeneratedMessageLite) messagetype);
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a, com.google.protobuf.r0
        public final boolean isInitialized() {
            return GeneratedMessageLite.isInitialized(this.instance, false);
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public BuilderType mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            copyOnWrite();
            try {
                Protobuf.getInstance().schemaFor(this.instance).mergeFrom(this.instance, CodedInputStreamReader.forCodedInput(codedInputStream), extensionRegistryLite);
                return this;
            } catch (RuntimeException e2) {
                if (e2.getCause() instanceof IOException) {
                    throw ((IOException) e2.getCause());
                }
                throw e2;
            }
        }

        public BuilderType mergeFrom(MessageType messagetype) {
            if (getDefaultInstanceForType().equals(messagetype)) {
                return this;
            }
            copyOnWrite();
            mergeFromInstance(this.instance, messagetype);
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public BuilderType mergeFrom(byte[] bArr, int i, int i2) throws d0 {
            return (BuilderType) mergeFrom(bArr, i, i2, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public BuilderType mergeFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0 {
            copyOnWrite();
            try {
                Protobuf.getInstance().schemaFor(this.instance).mergeFrom(this.instance, bArr, i, i + i2, new h.b(extensionRegistryLite));
                return this;
            } catch (d0 e2) {
                throw e2;
            } catch (IOException e3) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e3);
            } catch (IndexOutOfBoundsException unused) {
                throw d0.truncatedMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class c<T extends GeneratedMessageLite<T, ?>> extends com.google.protobuf.b<T> {
        private final T defaultInstance;

        public c(T t) {
            this.defaultInstance = t;
        }

        @Override // com.google.protobuf.b, com.google.protobuf.g1
        public T parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
            return (T) GeneratedMessageLite.parsePartialFrom(this.defaultInstance, codedInputStream, extensionRegistryLite);
        }

        @Override // com.google.protobuf.b, com.google.protobuf.g1
        public T parsePartialFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0 {
            return (T) GeneratedMessageLite.parsePartialFrom(this.defaultInstance, bArr, i, i2, extensionRegistryLite);
        }
    }

    public static abstract class d<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends b<MessageType, BuilderType> implements e<MessageType, BuilderType> {
        protected d(MessageType messagetype) {
            super(messagetype);
        }

        private FieldSet<f> ensureExtensionsAreMutable() {
            FieldSet<f> fieldSet = ((ExtendableMessage) this.instance).extensions;
            if (!fieldSet.isImmutable()) {
                return fieldSet;
            }
            FieldSet fieldSetClone = fieldSet.m201clone();
            ((ExtendableMessage) this.instance).extensions = fieldSetClone;
            return fieldSetClone;
        }

        private void verifyExtensionContainingType(g<MessageType, ?> gVar) {
            if (gVar.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public final <Type> BuilderType addExtension(t<MessageType, List<Type>> tVar, Type type) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            copyOnWrite();
            ensureExtensionsAreMutable().addRepeatedField(gVarCheckIsLite.descriptor, gVarCheckIsLite.singularToFieldSetType(type));
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.b, com.google.protobuf.a.AbstractC0277a, com.google.protobuf.q0.a
        public final MessageType buildPartial() {
            if (!((ExtendableMessage) this.instance).isMutable()) {
                return (MessageType) this.instance;
            }
            ((ExtendableMessage) this.instance).extensions.makeImmutable();
            return (MessageType) super.buildPartial();
        }

        public final BuilderType clearExtension(t<MessageType, ?> tVar) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            copyOnWrite();
            ensureExtensionsAreMutable().clearField(gVarCheckIsLite.descriptor);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.b
        protected void copyOnWriteInternal() {
            super.copyOnWriteInternal();
            if (((ExtendableMessage) this.instance).extensions != FieldSet.emptySet()) {
                MessageType messagetype = this.instance;
                ((ExtendableMessage) messagetype).extensions = ((ExtendableMessage) messagetype).extensions.m201clone();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> Type getExtension(t<MessageType, Type> tVar) {
            return (Type) ((ExtendableMessage) this.instance).getExtension(tVar);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> Type getExtension(t<MessageType, List<Type>> tVar, int i) {
            return (Type) ((ExtendableMessage) this.instance).getExtension(tVar, i);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> int getExtensionCount(t<MessageType, List<Type>> tVar) {
            return ((ExtendableMessage) this.instance).getExtensionCount(tVar);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.e
        public final <Type> boolean hasExtension(t<MessageType, Type> tVar) {
            return ((ExtendableMessage) this.instance).hasExtension(tVar);
        }

        void internalSetExtensionSet(FieldSet<f> fieldSet) {
            copyOnWrite();
            ((ExtendableMessage) this.instance).extensions = fieldSet;
        }

        public final <Type> BuilderType setExtension(t<MessageType, List<Type>> tVar, int i, Type type) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            copyOnWrite();
            ensureExtensionsAreMutable().setRepeatedField(gVarCheckIsLite.descriptor, i, gVarCheckIsLite.singularToFieldSetType(type));
            return this;
        }

        public final <Type> BuilderType setExtension(t<MessageType, Type> tVar, Type type) {
            g<MessageType, ?> gVarCheckIsLite = GeneratedMessageLite.checkIsLite(tVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            copyOnWrite();
            ensureExtensionsAreMutable().setField(gVarCheckIsLite.descriptor, gVarCheckIsLite.toFieldSetType(type));
            return this;
        }
    }

    public interface e<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends r0 {
        @Override // com.google.protobuf.r0
        /* synthetic */ q0 getDefaultInstanceForType();

        <Type> Type getExtension(t<MessageType, Type> tVar);

        <Type> Type getExtension(t<MessageType, List<Type>> tVar, int i);

        <Type> int getExtensionCount(t<MessageType, List<Type>> tVar);

        <Type> boolean hasExtension(t<MessageType, Type> tVar);

        @Override // com.google.protobuf.r0
        /* synthetic */ boolean isInitialized();
    }

    static final class f implements FieldSet.b<f> {
        final Internal.d<?> enumTypeMap;
        final boolean isPacked;
        final boolean isRepeated;
        final int number;
        final WireFormat.FieldType type;

        f(Internal.d<?> dVar, int i, WireFormat.FieldType fieldType, boolean z, boolean z2) {
            this.enumTypeMap = dVar;
            this.number = i;
            this.type = fieldType;
            this.isRepeated = z;
            this.isPacked = z2;
        }

        @Override // java.lang.Comparable
        public int compareTo(f fVar) {
            return this.number - fVar.number;
        }

        @Override // com.google.protobuf.FieldSet.b
        public Internal.d<?> getEnumType() {
            return this.enumTypeMap;
        }

        @Override // com.google.protobuf.FieldSet.b
        public WireFormat.JavaType getLiteJavaType() {
            return this.type.getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.b
        public WireFormat.FieldType getLiteType() {
            return this.type;
        }

        @Override // com.google.protobuf.FieldSet.b
        public int getNumber() {
            return this.number;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.FieldSet.b
        public q0.a internalMergeFrom(q0.a aVar, q0 q0Var) {
            return ((b) aVar).mergeFrom((GeneratedMessageLite) q0Var);
        }

        @Override // com.google.protobuf.FieldSet.b
        public boolean isPacked() {
            return this.isPacked;
        }

        @Override // com.google.protobuf.FieldSet.b
        public boolean isRepeated() {
            return this.isRepeated;
        }
    }

    public static class g<ContainingType extends q0, Type> extends t<ContainingType, Type> {
        final ContainingType containingTypeDefaultInstance;
        final Type defaultValue;
        final f descriptor;
        final q0 messageDefaultInstance;

        g(ContainingType containingtype, Type type, q0 q0Var, f fVar, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (fVar.getLiteType() == WireFormat.FieldType.MESSAGE && q0Var == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.containingTypeDefaultInstance = containingtype;
            this.defaultValue = type;
            this.messageDefaultInstance = q0Var;
            this.descriptor = fVar;
        }

        Object fromFieldSetType(Object obj) {
            if (!this.descriptor.isRepeated()) {
                return singularFromFieldSetType(obj);
            }
            if (this.descriptor.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(singularFromFieldSetType(it.next()));
            }
            return arrayList;
        }

        public ContainingType getContainingTypeDefaultInstance() {
            return this.containingTypeDefaultInstance;
        }

        @Override // com.google.protobuf.t
        public Type getDefaultValue() {
            return this.defaultValue;
        }

        @Override // com.google.protobuf.t
        public WireFormat.FieldType getLiteType() {
            return this.descriptor.getLiteType();
        }

        @Override // com.google.protobuf.t
        public q0 getMessageDefaultInstance() {
            return this.messageDefaultInstance;
        }

        @Override // com.google.protobuf.t
        public int getNumber() {
            return this.descriptor.getNumber();
        }

        @Override // com.google.protobuf.t
        public boolean isRepeated() {
            return this.descriptor.isRepeated;
        }

        Object singularFromFieldSetType(Object obj) {
            return this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM ? this.descriptor.enumTypeMap.findValueByNumber(((Integer) obj).intValue()) : obj;
        }

        Object singularToFieldSetType(Object obj) {
            return this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM ? Integer.valueOf(((Internal.c) obj).getNumber()) : obj;
        }

        Object toFieldSetType(Object obj) {
            if (!this.descriptor.isRepeated()) {
                return singularToFieldSetType(obj);
            }
            if (this.descriptor.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(singularToFieldSetType(it.next()));
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>, T> g<MessageType, T> checkIsLite(t<MessageType, T> tVar) {
        if (tVar.isLite()) {
            return (g) tVar;
        }
        throw new IllegalArgumentException("Expected a lite extension.");
    }

    private static <T extends GeneratedMessageLite<T, ?>> T checkMessageInitialized(T t) throws d0 {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw t.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(t);
    }

    private int computeSerializedSize(l1<?> l1Var) {
        return l1Var == null ? Protobuf.getInstance().schemaFor(this).getSerializedSize(this) : l1Var.getSerializedSize(this);
    }

    protected static Internal.a emptyBooleanList() {
        return BooleanArrayList.emptyList();
    }

    protected static Internal.b emptyDoubleList() {
        return DoubleArrayList.emptyList();
    }

    protected static Internal.f emptyFloatList() {
        return FloatArrayList.emptyList();
    }

    protected static Internal.g emptyIntList() {
        return IntArrayList.emptyList();
    }

    protected static Internal.i emptyLongList() {
        return LongArrayList.emptyList();
    }

    protected static <E> Internal.j<E> emptyProtobufList() {
        return ProtobufArrayList.emptyList();
    }

    private final void ensureUnknownFieldsInitialized() {
        if (this.unknownFields == UnknownFieldSetLite.getDefaultInstance()) {
            this.unknownFields = UnknownFieldSetLite.newInstance();
        }
    }

    static <T extends GeneratedMessageLite<?, ?>> T getDefaultInstance(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) b2.allocateInstance(cls)).getDefaultInstanceForType();
            if (generatedMessageLite == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, generatedMessageLite);
        }
        return (T) generatedMessageLite;
    }

    static java.lang.reflect.Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e2);
        }
    }

    static Object invokeOrDie(java.lang.reflect.Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static final <T extends GeneratedMessageLite<T, ?>> boolean isInitialized(T t, boolean z) {
        byte bByteValue = ((Byte) t.dynamicMethod(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zIsInitialized = Protobuf.getInstance().schemaFor(t).isInitialized(t);
        if (z) {
            t.dynamicMethod(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? t : null);
        }
        return zIsInitialized;
    }

    protected static Internal.a mutableCopy(Internal.a aVar) {
        int size = aVar.size();
        return aVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Internal.b mutableCopy(Internal.b bVar) {
        int size = bVar.size();
        return bVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Internal.f mutableCopy(Internal.f fVar) {
        int size = fVar.size();
        return fVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Internal.g mutableCopy(Internal.g gVar) {
        int size = gVar.size();
        return gVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Internal.i mutableCopy(Internal.i iVar) {
        int size = iVar.size();
        return iVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static <E> Internal.j<E> mutableCopy(Internal.j<E> jVar) {
        int size = jVar.size();
        return jVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Object newMessageInfo(q0 q0Var, String str, Object[] objArr) {
        return new i1(q0Var, str, objArr);
    }

    public static <ContainingType extends q0, Type> g<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, q0 q0Var, Internal.d<?> dVar, int i, WireFormat.FieldType fieldType, boolean z, Class cls) {
        return new g<>(containingtype, Collections.emptyList(), q0Var, new f(dVar, i, fieldType, true, z), cls);
    }

    public static <ContainingType extends q0, Type> g<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, q0 q0Var, Internal.d<?> dVar, int i, WireFormat.FieldType fieldType, Class cls) {
        return new g<>(containingtype, type, q0Var, new f(dVar, i, fieldType, false, false), cls);
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream) throws d0 {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t, inputStream, ExtensionRegistryLite.getEmptyRegistry()));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t, inputStream, extensionRegistryLite));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteString byteString) throws d0 {
        return (T) checkMessageInitialized(parseFrom(t, byteString, ExtensionRegistryLite.getEmptyRegistry()));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (T) checkMessageInitialized(parsePartialFrom(t, byteString, extensionRegistryLite));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, CodedInputStream codedInputStream) throws d0 {
        return (T) parseFrom(t, codedInputStream, ExtensionRegistryLite.getEmptyRegistry());
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (T) checkMessageInitialized(parsePartialFrom(t, codedInputStream, extensionRegistryLite));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, InputStream inputStream) throws d0 {
        return (T) checkMessageInitialized(parsePartialFrom(t, CodedInputStream.newInstance(inputStream), ExtensionRegistryLite.getEmptyRegistry()));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (T) checkMessageInitialized(parsePartialFrom(t, CodedInputStream.newInstance(inputStream), extensionRegistryLite));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer) throws d0 {
        return (T) parseFrom(t, byteBuffer, ExtensionRegistryLite.getEmptyRegistry());
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (T) checkMessageInitialized(parseFrom(t, CodedInputStream.newInstance(byteBuffer), extensionRegistryLite));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, byte[] bArr) throws d0 {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, ExtensionRegistryLite.getEmptyRegistry()));
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, extensionRegistryLite));
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialDelimitedFrom(T t, InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            CodedInputStream codedInputStreamNewInstance = CodedInputStream.newInstance(new a.AbstractC0277a.C0278a(inputStream, CodedInputStream.readRawVarint32(i, inputStream)));
            T t2 = (T) parsePartialFrom(t, codedInputStreamNewInstance, extensionRegistryLite);
            try {
                codedInputStreamNewInstance.checkLastTagWas(0);
                return t2;
            } catch (d0 e2) {
                throw e2.setUnfinishedMessage(t2);
            }
        } catch (d0 e3) {
            if (e3.getThrownFromInputStream()) {
                throw new d0((IOException) e3);
            }
            throw e3;
        } catch (IOException e4) {
            throw new d0(e4);
        }
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
        T t2 = (T) parsePartialFrom(t, codedInputStreamNewCodedInput, extensionRegistryLite);
        try {
            codedInputStreamNewCodedInput.checkLastTagWas(0);
            return t2;
        } catch (d0 e2) {
            throw e2.setUnfinishedMessage(t2);
        }
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, CodedInputStream codedInputStream) throws d0 {
        return (T) parsePartialFrom(t, codedInputStream, ExtensionRegistryLite.getEmptyRegistry());
    }

    static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        T t2 = (T) t.newMutableInstance();
        try {
            l1 l1VarSchemaFor = Protobuf.getInstance().schemaFor(t2);
            l1VarSchemaFor.mergeFrom(t2, CodedInputStreamReader.forCodedInput(codedInputStream), extensionRegistryLite);
            l1VarSchemaFor.makeImmutable(t2);
            return t2;
        } catch (d0 e2) {
            e = e2;
            if (e.getThrownFromInputStream()) {
                e = new d0((IOException) e);
            }
            throw e.setUnfinishedMessage(t2);
        } catch (x1 e3) {
            throw e3.asInvalidProtocolBufferException().setUnfinishedMessage(t2);
        } catch (IOException e4) {
            if (e4.getCause() instanceof d0) {
                throw ((d0) e4.getCause());
            }
            throw new d0(e4).setUnfinishedMessage(t2);
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof d0) {
                throw ((d0) e5.getCause());
            }
            throw e5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        T t2 = (T) t.newMutableInstance();
        try {
            l1 l1VarSchemaFor = Protobuf.getInstance().schemaFor(t2);
            l1VarSchemaFor.mergeFrom(t2, bArr, i, i + i2, new h.b(extensionRegistryLite));
            l1VarSchemaFor.makeImmutable(t2);
            return t2;
        } catch (d0 e2) {
            e = e2;
            if (e.getThrownFromInputStream()) {
                e = new d0((IOException) e);
            }
            throw e.setUnfinishedMessage(t2);
        } catch (x1 e3) {
            throw e3.asInvalidProtocolBufferException().setUnfinishedMessage(t2);
        } catch (IOException e4) {
            if (e4.getCause() instanceof d0) {
                throw ((d0) e4.getCause());
            }
            throw new d0(e4).setUnfinishedMessage(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw d0.truncatedMessage().setUnfinishedMessage(t2);
        }
    }

    protected static <T extends GeneratedMessageLite<?, ?>> void registerDefaultInstance(Class<T> cls, T t) {
        t.markImmutable();
        defaultInstanceMap.put(cls, t);
    }

    Object buildMessageInfo() throws Exception {
        return dynamicMethod(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    void clearMemoizedHashCode() {
        this.memoizedHashCode = 0;
    }

    void clearMemoizedSerializedSize() {
        setMemoizedSerializedSize(Integer.MAX_VALUE);
    }

    int computeHashCode() {
        return Protobuf.getInstance().schemaFor(this).hashCode(this);
    }

    protected final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    protected final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType createBuilder(MessageType messagetype) {
        return (BuilderType) createBuilder().mergeFrom((GeneratedMessageLite) messagetype);
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke) {
        return dynamicMethod(methodToInvoke, null, null);
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj) {
        return dynamicMethod(methodToInvoke, obj, null);
    }

    protected abstract Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Protobuf.getInstance().schemaFor(this).equals(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0, com.google.protobuf.r0
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) dynamicMethod(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    int getMemoizedHashCode() {
        return this.memoizedHashCode;
    }

    @Override // com.google.protobuf.a
    int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0
    public final g1<MessageType> getParserForType() {
        return (g1) dynamicMethod(MethodToInvoke.GET_PARSER);
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    @Override // com.google.protobuf.a
    int getSerializedSize(l1 l1Var) {
        if (!isMutable()) {
            if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
                return getMemoizedSerializedSize();
            }
            int iComputeSerializedSize = computeSerializedSize(l1Var);
            setMemoizedSerializedSize(iComputeSerializedSize);
            return iComputeSerializedSize;
        }
        int iComputeSerializedSize2 = computeSerializedSize(l1Var);
        if (iComputeSerializedSize2 >= 0) {
            return iComputeSerializedSize2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iComputeSerializedSize2);
    }

    public int hashCode() {
        if (isMutable()) {
            return computeHashCode();
        }
        if (hashCodeIsNotMemoized()) {
            setMemoizedHashCode(computeHashCode());
        }
        return getMemoizedHashCode();
    }

    boolean hashCodeIsNotMemoized() {
        return getMemoizedHashCode() == 0;
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0, com.google.protobuf.r0
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    boolean isMutable() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    protected void makeImmutable() {
        Protobuf.getInstance().schemaFor(this).makeImmutable(this);
        markImmutable();
    }

    void markImmutable() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    protected void mergeLengthDelimitedField(int i, ByteString byteString) {
        ensureUnknownFieldsInitialized();
        this.unknownFields.mergeLengthDelimitedField(i, byteString);
    }

    protected final void mergeUnknownFields(UnknownFieldSetLite unknownFieldSetLite) {
        this.unknownFields = UnknownFieldSetLite.mutableCopyOf(this.unknownFields, unknownFieldSetLite);
    }

    protected void mergeVarintField(int i, int i2) {
        ensureUnknownFieldsInitialized();
        this.unknownFields.mergeVarintField(i, i2);
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0
    public final BuilderType newBuilderForType() {
        return (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    MessageType newMutableInstance() {
        return (MessageType) dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    protected boolean parseUnknownField(int i, CodedInputStream codedInputStream) throws IOException {
        if (WireFormat.getTagWireType(i) == 4) {
            return false;
        }
        ensureUnknownFieldsInitialized();
        return this.unknownFields.mergeFieldFrom(i, codedInputStream);
    }

    void setMemoizedHashCode(int i) {
        this.memoizedHashCode = i;
    }

    @Override // com.google.protobuf.a
    void setMemoizedSerializedSize(int i) {
        if (i >= 0) {
            this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0
    public final BuilderType toBuilder() {
        return (BuilderType) ((b) dynamicMethod(MethodToInvoke.NEW_BUILDER)).mergeFrom(this);
    }

    public String toString() {
        return s0.toString(this, super.toString());
    }

    @Override // com.google.protobuf.a, com.google.protobuf.q0
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        Protobuf.getInstance().schemaFor(this).writeTo(this, CodedOutputStreamWriter.forCodedOutput(codedOutputStream));
    }
}
