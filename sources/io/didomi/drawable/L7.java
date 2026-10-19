package io.didomi.drawable;

import android.view.KeyEvent;
import android.view.View;
import io.didomi.drawable.K7;
import io.didomi.drawable.V7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Lio/didomi/sdk/L7;", "Lio/didomi/sdk/Y7;", "Lio/didomi/sdk/b2;", "binding", "<init>", "(Lio/didomi/sdk/b2;)V", "Lio/didomi/sdk/K7$a;", "callback", "Lio/didomi/sdk/V7$a;", "link", "", "a", "(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$a;)V", "Lio/didomi/sdk/b2;", "android_release"}, mv = {1, 8, 0})
public final class L7 extends Y7 {
    private final C1719b2 a;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[V7.ArrowLink.EnumC0475a.values().length];
            try {
                iArr[V7.ArrowLink.EnumC0475a.PrivacyPolicy.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[V7.ArrowLink.EnumC0475a.Iab.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[V7.ArrowLink.EnumC0475a.LegIntClaim.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[V7.ArrowLink.EnumC0475a.EssentialPurpose.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[V7.ArrowLink.EnumC0475a.AdditionalDataProcessing.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L7(C1719b2 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.a = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(V7.ArrowLink link, K7.a callback, View view) {
        Intrinsics.checkNotNullParameter(link, "$link");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        int i = a.a[link.getActionType().ordinal()];
        if (i == 1) {
            callback.e();
            return;
        }
        if (i == 2) {
            callback.f();
            return;
        }
        if (i == 3) {
            callback.d();
        } else if (i == 4) {
            callback.b();
        } else {
            if (i != 5) {
                return;
            }
            callback.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(View this_apply, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (i != 22 || keyEvent.getAction() != 1) {
            return false;
        }
        this_apply.callOnClick();
        return true;
    }

    public final void a(final K7.a callback, final V7.ArrowLink link) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(link, "link");
        this.a.b.setText(link.getText());
        final View view = this.itemView;
        view.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.ub
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                L7.a(link, callback, view2);
            }
        });
        view.setOnKeyListener(new View.OnKeyListener() { // from class: io.didomi.sdk.tb
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                return L7.a(view, view2, i, keyEvent);
            }
        });
    }
}
