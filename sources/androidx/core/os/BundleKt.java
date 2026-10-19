package androidx.core.os;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 4 more
    */
/* JADX INFO: compiled from: Bundle.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"bundleOf", "Landroid/os/Bundle;", "pairs", "", "Lkotlin/Pair;", "", "", "([Lkotlin/Pair;)Landroid/os/Bundle;", "core-ktx_release"}, mv = {1, 7, 1}, xi = 48)
public final class BundleKt {
    public static final Bundle bundleOf() {
        return new Bundle(0);
    }

    public static final Bundle bundleOf(Pair<String, ? extends Object>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        Bundle bundle = new Bundle(pairs.length);
        for (Pair<String, ? extends Object> pair : pairs) {
            String strC = pair.c();
            Object objD = pair.d();
            if (objD == null) {
                bundle.putString(strC, null);
            } else if (objD instanceof Boolean) {
                bundle.putBoolean(strC, ((Boolean) objD).booleanValue());
            } else if (objD instanceof Byte) {
                bundle.putByte(strC, ((Number) objD).byteValue());
            } else if (objD instanceof Character) {
                bundle.putChar(strC, ((Character) objD).charValue());
            } else if (objD instanceof Double) {
                bundle.putDouble(strC, ((Number) objD).doubleValue());
            } else if (objD instanceof Float) {
                bundle.putFloat(strC, ((Number) objD).floatValue());
            } else if (objD instanceof Integer) {
                bundle.putInt(strC, ((Number) objD).intValue());
            } else if (objD instanceof Long) {
                bundle.putLong(strC, ((Number) objD).longValue());
            } else if (objD instanceof Short) {
                bundle.putShort(strC, ((Number) objD).shortValue());
            } else if (objD instanceof Bundle) {
                bundle.putBundle(strC, (Bundle) objD);
            } else if (objD instanceof CharSequence) {
                bundle.putCharSequence(strC, (CharSequence) objD);
            } else if (objD instanceof Parcelable) {
                bundle.putParcelable(strC, (Parcelable) objD);
            } else if (objD instanceof boolean[]) {
                bundle.putBooleanArray(strC, (boolean[]) objD);
            } else if (objD instanceof byte[]) {
                bundle.putByteArray(strC, (byte[]) objD);
            } else if (objD instanceof char[]) {
                bundle.putCharArray(strC, (char[]) objD);
            } else if (objD instanceof double[]) {
                bundle.putDoubleArray(strC, (double[]) objD);
            } else if (objD instanceof float[]) {
                bundle.putFloatArray(strC, (float[]) objD);
            } else if (objD instanceof int[]) {
                bundle.putIntArray(strC, (int[]) objD);
            } else if (objD instanceof long[]) {
                bundle.putLongArray(strC, (long[]) objD);
            } else if (objD instanceof short[]) {
                bundle.putShortArray(strC, (short[]) objD);
            } else if (objD instanceof Object[]) {
                Class<?> componentType = objD.getClass().getComponentType();
                Intrinsics.checkNotNull(componentType);
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    Intrinsics.checkNotNull(objD, "null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>");
                    bundle.putParcelableArray(strC, (Parcelable[]) objD);
                } else if (String.class.isAssignableFrom(componentType)) {
                    Intrinsics.checkNotNull(objD, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                    bundle.putStringArray(strC, (String[]) objD);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    Intrinsics.checkNotNull(objD, "null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>");
                    bundle.putCharSequenceArray(strC, (CharSequence[]) objD);
                } else {
                    if (!Serializable.class.isAssignableFrom(componentType)) {
                        throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + strC + '\"');
                    }
                    bundle.putSerializable(strC, (Serializable) objD);
                }
            } else if (objD instanceof Serializable) {
                bundle.putSerializable(strC, (Serializable) objD);
            } else {
                int i = Build.VERSION.SDK_INT;
                if (i >= 18 && (objD instanceof IBinder)) {
                    BundleApi18ImplKt.putBinder(bundle, strC, (IBinder) objD);
                } else if (i >= 21 && (objD instanceof Size)) {
                    BundleApi21ImplKt.putSize(bundle, strC, (Size) objD);
                } else {
                    if (i < 21 || !(objD instanceof SizeF)) {
                        throw new IllegalArgumentException("Illegal value type " + objD.getClass().getCanonicalName() + " for key \"" + strC + '\"');
                    }
                    BundleApi21ImplKt.putSizeF(bundle, strC, (SizeF) objD);
                }
            }
        }
        return bundle;
    }
}
