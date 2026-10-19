package io.didomi.drawable;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.annotation.DimenRes;
import androidx.core.content.ContextCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\u001a+\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a5\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\n\u001a\u0019\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0006\u0010\r\u001a#\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0006\u0010\u0010\u001a9\u0010\u0006\u001a\u00020\u0004*\u00020\u00002\b\b\u0003\u0010\u0011\u001a\u00020\b2\b\b\u0003\u0010\u0012\u001a\u00020\b2\b\b\u0003\u0010\u0013\u001a\u00020\b2\b\b\u0003\u0010\u0014\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\u0015\u001a\u0011\u0010\u0006\u001a\u00020\u0004*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u00020\u0004*\u00020\u0000¢\u0006\u0004\b\u0017\u0010\u0016\u001a\u001d\u0010\u0006\u001a\u00020\b*\u00020\u00002\b\b\u0003\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0006\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroid/view/View;", "", "duration", "Lkotlin/Function0;", "", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "a", "(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V", "", "visibility", "(Landroid/view/View;JILkotlin/jvm/functions/Function0;)V", "Lio/didomi/sdk/z8;", "themeProvider", "(Landroid/view/View;Lio/didomi/sdk/z8;)V", "", "visible", "(Landroid/view/View;Lio/didomi/sdk/z8;Z)V", "start", ViewHierarchyConstants.DIMENSION_TOP_KEY, TtmlNode.END, "bottom", "(Landroid/view/View;IIII)V", "(Landroid/view/View;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "value", "(Landroid/view/View;I)I", "android_release"}, mv = {1, 8, 0})
public final class k9 {

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"io/didomi/sdk/k9$a", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/view/animation/Animation;", "animation", "", "onAnimationStart", "(Landroid/view/animation/Animation;)V", "onAnimationEnd", "onAnimationRepeat", "android_release"}, mv = {1, 8, 0})
    public static final class a implements Animation.AnimationListener {
        final /* synthetic */ View a;
        final /* synthetic */ Function0<v> b;

        a(View view, Function0<v> function0) {
            this.a = view;
            this.b = function0;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Function0<v> function0 = this.b;
            if (function0 != null) {
                function0.invoke();
                v vVar = v.a;
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.a.setVisibility(0);
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"io/didomi/sdk/k9$b", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/view/animation/Animation;", "animation", "", "onAnimationStart", "(Landroid/view/animation/Animation;)V", "onAnimationEnd", "onAnimationRepeat", "android_release"}, mv = {1, 8, 0})
    public static final class b implements Animation.AnimationListener {
        final /* synthetic */ View a;
        final /* synthetic */ int b;
        final /* synthetic */ Function0<v> c;

        b(View view, int i, Function0<v> function0) {
            this.a = view;
            this.b = i;
            this.c = function0;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.a.setVisibility(this.b);
            Function0<v> function0 = this.c;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    private static final int a(View view, @DimenRes int i) {
        if (i != 0) {
            return view.getResources().getDimensionPixelSize(i);
        }
        return 0;
    }

    public static final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(0.5f);
        view.setEnabled(false);
    }

    public static final void a(View view, @DimenRes int i, @DimenRes int i2, @DimenRes int i3, @DimenRes int i4) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setPaddingRelative(a(view, i), a(view, i2), a(view, i3), a(view, i4));
    }

    public static /* synthetic */ void a(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = 0;
        }
        a(view, i, i2, i3, i4);
    }

    public static final void a(View view, long j, int i, Function0<v> function0) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.clearAnimation();
        if (view.getVisibility() != 0) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.didomi_fade_out);
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        animationLoadAnimation.setDuration((long) (j * C1707a0.b(context)));
        animationLoadAnimation.setAnimationListener(new b(view, i, function0));
        view.startAnimation(animationLoadAnimation);
    }

    public static /* synthetic */ void a(View view, long j, int i, Function0 function0, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8;
        }
        if ((i2 & 4) != 0) {
            function0 = null;
        }
        a(view, j, i, function0);
    }

    public static final void a(View view, long j, Function0<v> function0) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.clearAnimation();
        if (view.getVisibility() == 0) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.didomi_fade_in);
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        animationLoadAnimation.setDuration((long) (j * C1707a0.b(context)));
        animationLoadAnimation.setAnimationListener(new a(view, function0));
        view.startAnimation(animationLoadAnimation);
    }

    public static /* synthetic */ void a(View view, long j, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        a(view, j, (Function0<v>) function0);
    }

    public static final void a(View view, C1965z8 themeProvider) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        view.setBackgroundColor(ContextCompat.getColor(view.getContext(), themeProvider.t() ? R.color.didomi_dark_bottom_divider : R.color.didomi_light_bottom_divider));
    }

    public static final void a(View view, C1965z8 themeProvider, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        if (!z) {
            if (view.getVisibility() != 8) {
                view.setVisibility(8);
            }
        } else {
            view.setBackgroundColor(ContextCompat.getColor(view.getContext(), themeProvider.t() ? R.color.didomi_dark_divider : R.color.didomi_light_divider));
            if (view.getVisibility() != 0) {
                view.setVisibility(0);
            }
        }
    }

    public static /* synthetic */ void a(View view, C1965z8 c1965z8, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        a(view, c1965z8, z);
    }

    public static final void b(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(1.0f);
        view.setEnabled(true);
    }
}
