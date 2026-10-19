package io.didomi.drawable;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.widget.Button;
import androidx.annotation.ColorInt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.q, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\t\u001a\u001b\u0010\b\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u0001¢\u0006\u0004\b\b\u0010\u0005¨\u0006\u000b"}, d2 = {"Landroid/widget/Button;", "", "color", "", "a", "(Landroid/widget/Button;I)V", "Lio/didomi/sdk/w8;", "theme", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/widget/Button;Lio/didomi/sdk/w8;)V", "olderThanApi", "android_release"}, mv = {1, 8, 0})
public final class C1866q {
    public static final void a(Button button, @ColorInt int i) {
        Intrinsics.checkNotNullParameter(button, "<this>");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(button.getResources().getDisplayMetrics().density * 5.0f);
        gradientDrawable.setColor(0);
        gradientDrawable.setStroke((int) (button.getResources().getDisplayMetrics().density * 1.0f), i);
        button.setBackground(gradientDrawable);
    }

    public static /* synthetic */ void a(Button button, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 26;
        }
        b(button, i);
    }

    public static final void a(Button button, TextTheme theme) {
        Intrinsics.checkNotNullParameter(button, "<this>");
        Intrinsics.checkNotNullParameter(theme, "theme");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        button.setBackground(gradientDrawable);
        Drawable[] compoundDrawablesRelative = button.getCompoundDrawablesRelative();
        Intrinsics.checkNotNullExpressionValue(compoundDrawablesRelative, "compoundDrawablesRelative");
        for (Drawable drawable : compoundDrawablesRelative) {
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(theme.getTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
        C1955y8.a(button, theme);
        button.setTypeface(Typeface.DEFAULT_BOLD);
    }

    public static final void b(Button button, int i) {
        Intrinsics.checkNotNullParameter(button, "<this>");
        if (Build.VERSION.SDK_INT < i) {
            button.setPaintFlags(button.getPaintFlags() | 8);
        }
    }

    public static final void b(Button button, TextTheme theme) {
        Intrinsics.checkNotNullParameter(button, "<this>");
        Intrinsics.checkNotNullParameter(theme, "theme");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(button.getResources().getDisplayMetrics().density * 5.0f);
        gradientDrawable.setColor(0);
        gradientDrawable.setStroke((int) (button.getResources().getDisplayMetrics().density * 1.0f), theme.getTextColor());
        button.setBackground(gradientDrawable);
        Drawable[] compoundDrawablesRelative = button.getCompoundDrawablesRelative();
        Intrinsics.checkNotNullExpressionValue(compoundDrawablesRelative, "compoundDrawablesRelative");
        for (Drawable drawable : compoundDrawablesRelative) {
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(theme.getTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
        C1955y8.a(button, theme);
    }
}
