package io.didomi.drawable;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.StringsKt__StringsKt;

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
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a!\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0004\u0010\n\u001a\u001d\u0010\u0004\u001a\u00020\f*\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u0004\u0010\u000e\u001a%\u0010\u0004\u001a\u00020\f*\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u0004\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroid/text/Spanned;", "", "textSize", "Landroid/text/Spannable;", "a", "(Landroid/text/Spanned;F)Landroid/text/Spannable;", "Landroid/widget/TextView;", "container", "Landroid/content/res/ColorStateList;", "iconColors", "(Landroid/text/Spanned;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)Landroid/text/Spannable;", "", "", "start", "(Ljava/lang/CharSequence;I)I", "index", "(Ljava/lang/CharSequence;II)I", "android_release"}, mv = {1, 8, 0})
public final class T5 {
    public static final int a(CharSequence charSequence, int i) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(charSequence, "\n", i, false, 4, (Object) null);
        return iIndexOf$default > 0 ? iIndexOf$default : charSequence.length();
    }

    public static final int a(CharSequence charSequence, int i, int i2) {
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
        return StringsKt__StringsKt.indexOf$default(charSequence, i + ". ", i2, false, 4, (Object) null);
    }

    public static /* synthetic */ int a(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return a(charSequence, i, i2);
    }

    public static final Spannable a(Spanned spanned, float f2) {
        Intrinsics.checkNotNullParameter(spanned, "<this>");
        SpannableString spannableStringValueOf = SpannableString.valueOf(spanned);
        Intrinsics.checkNotNullExpressionValue(spannableStringValueOf, "valueOf(this)");
        int iA = a(spannableStringValueOf, 1, 0, 2, null);
        if (iA >= 0) {
            spannableStringValueOf.setSpan(new LeadingMarginSpan.Standard(0, (int) (2 * f2)), iA, a((CharSequence) spannableStringValueOf, iA), 18);
            int iA2 = a(spannableStringValueOf, 2, 0, 2, null);
            if (iA2 >= 0) {
                int i = 2;
                while (a(spannableStringValueOf, i, 0, 2, null) > 0) {
                    i++;
                }
                int iA3 = a(spannableStringValueOf, i - 1, 0, 2, null);
                int iA4 = a(spannableStringValueOf, 10, iA2);
                if (iA4 < 0) {
                    spannableStringValueOf.setSpan(new LeadingMarginSpan.Standard(0, (int) (((double) f2) * 2.6d)), iA2, a((CharSequence) spannableStringValueOf, iA3), 18);
                } else {
                    double d2 = f2;
                    spannableStringValueOf.setSpan(new LeadingMarginSpan.Standard(0, (int) (2.6d * d2)), iA2, iA4, 18);
                    spannableStringValueOf.setSpan(new LeadingMarginSpan.Standard(0, (int) (d2 * 3.3d)), a(spannableStringValueOf, 10, iA2), a((CharSequence) spannableStringValueOf, iA3), 18);
                }
            }
        }
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringValueOf, "• ", 0, false, 6, (Object) null);
        if (iIndexOf$default >= 0) {
            spannableStringValueOf.setSpan(new LeadingMarginSpan.Standard(0, (int) (((double) f2) * 1.6d)), iIndexOf$default, a((CharSequence) spannableStringValueOf, StringsKt__StringsKt.lastIndexOf$default((CharSequence) spannableStringValueOf, "• ", 0, false, 6, (Object) null)), 18);
        }
        return spannableStringValueOf;
    }

    public static final Spannable a(Spanned spanned, TextView container, ColorStateList iconColors) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(spanned, "<this>");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(iconColors, "iconColors");
        SpannableString spannableStringValueOf = SpannableString.valueOf(spanned);
        Intrinsics.checkNotNullExpressionValue(spannableStringValueOf, "valueOf(this)");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringValueOf, "[didomi_link_external]", 0, false, 6, (Object) null);
        if (iIndexOf$default < 0 || (drawable = ResourcesCompat.getDrawable(container.getResources(), R.drawable.didomi_ic_external_link, null)) == null) {
            return spannableStringValueOf;
        }
        Intrinsics.checkNotNullExpressionValue(drawable, "ResourcesCompat.getDrawa…ink, null) ?: return this");
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            double textSize = ((double) container.getTextSize()) * 0.8800000000000001d;
            drawable.setBounds(0, 0, MathKt__MathJVMKt.roundToInt((((double) drawable.getIntrinsicWidth()) * textSize) / ((double) intrinsicHeight)), MathKt__MathJVMKt.roundToInt(textSize));
        }
        DrawableCompat.setTintList(drawable, iconColors);
        while (iIndexOf$default >= 0) {
            int i = iIndexOf$default + 22;
            spannableStringValueOf.setSpan(new I2(drawable, 1), iIndexOf$default, i, 33);
            iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringValueOf, "[didomi_link_external]", i, false, 4, (Object) null);
        }
        return spannableStringValueOf;
    }
}
