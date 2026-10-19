package com.facebook;

import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import java.util.Arrays;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookException.kt */
/* JADX INFO: loaded from: classes2.dex */
public class FacebookException extends RuntimeException {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 1;

    /* JADX INFO: compiled from: FacebookException.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    public FacebookException() {
    }

    public FacebookException(final String str) {
        super(str);
        Random random = new Random();
        if (str != null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (!FacebookSdk.isInitialized() || random.nextInt(100) <= 50) {
                return;
            }
            FeatureManager featureManager = FeatureManager.INSTANCE;
            FeatureManager.checkFeature(FeatureManager.Feature.ErrorReport, new FeatureManager.Callback() { // from class: com.facebook.f
                @Override // com.facebook.internal.FeatureManager.Callback
                public final void onCompleted(boolean z) {
                    FacebookException.m37_init_$lambda0(str, z);
                }
            });
        }
    }

    public FacebookException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FacebookException(String str, Object... args) {
        String str2;
        Intrinsics.checkNotNullParameter(args, "args");
        if (str == null) {
            str2 = null;
        } else {
            Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
            str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            Intrinsics.checkNotNullExpressionValue(str2, "java.lang.String.format(this, *args)");
        }
        this(str2);
    }

    public FacebookException(Throwable th) {
        super(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: _init_$lambda-0, reason: not valid java name */
    public static final void m37_init_$lambda0(String str, boolean z) {
        if (z) {
            try {
                ErrorReportHandler errorReportHandler = ErrorReportHandler.INSTANCE;
                ErrorReportHandler.save(str);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        String message = getMessage();
        return message == null ? "" : message;
    }
}
