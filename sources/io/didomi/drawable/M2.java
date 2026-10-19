package io.didomi.drawable;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.events.ConsentChangedEvent;
import io.didomi.drawable.events.ErrorEvent;
import io.didomi.drawable.events.Event;
import io.didomi.drawable.events.HideNoticeEvent;
import io.didomi.drawable.events.HidePreferencesEvent;
import io.didomi.drawable.events.InitializationEventListener;
import io.didomi.drawable.events.LanguageUpdateFailedEvent;
import io.didomi.drawable.events.LanguageUpdatedEvent;
import io.didomi.drawable.events.NoticeClickAgreeEvent;
import io.didomi.drawable.events.NoticeClickDisagreeEvent;
import io.didomi.drawable.events.NoticeClickMoreInfoEvent;
import io.didomi.drawable.events.NoticeClickPrivacyPolicyEvent;
import io.didomi.drawable.events.NoticeClickViewSPIPurposesEvent;
import io.didomi.drawable.events.NoticeClickViewVendorsEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllVendorsEvent;
import io.didomi.drawable.events.PreferencesClickCategoryAgreeEvent;
import io.didomi.drawable.events.PreferencesClickCategoryDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllVendorsEvent;
import io.didomi.drawable.events.PreferencesClickPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickResetAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickSPICategoryAgreeEvent;
import io.didomi.drawable.events.PreferencesClickSPICategoryDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickVendorAgreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorSaveChoicesEvent;
import io.didomi.drawable.events.PreferencesClickViewPurposesEvent;
import io.didomi.drawable.events.PreferencesClickViewSPIPurposesEvent;
import io.didomi.drawable.events.PreferencesClickViewVendorsEvent;
import io.didomi.drawable.events.ReadyEvent;
import io.didomi.drawable.events.ShowNoticeEvent;
import io.didomi.drawable.events.ShowPreferencesEvent;
import io.didomi.drawable.events.SyncDoneEvent;
import io.didomi.drawable.events.SyncErrorEvent;
import io.didomi.drawable.events.SyncReadyEvent;
import io.didomi.drawable.functionalinterfaces.DidomiEventListener;
import io.didomi.drawable.functionalinterfaces.DidomiVendorStatusListener;
import io.didomi.drawable.models.CurrentUserStatus;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
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
    	... 5 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0012¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\t\u0010\u000eJ)\u0010\r\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\r\u0010\u0013J\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\r\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\r\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\r\u0010\u001aJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001bR \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001c8\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\t\u0010\u001d\u001a\u0004\b\r\u0010\u001eR \u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001c8\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u001d\u001a\u0004\b\t\u0010\u001e¨\u0006\""}, d2 = {"Lio/didomi/sdk/M2;", "", "Landroid/os/Handler;", "handler", "<init>", "(Landroid/os/Handler;)V", "Lio/didomi/sdk/events/Event;", NotificationCompat.CATEGORY_EVENT, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/events/Event;)Z", "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "a", "(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z", "", "vendorId", b4.r, "Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;", "(Ljava/lang/String;Ljava/lang/Boolean;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)Z", "(Ljava/lang/String;)Z", "", "c", "(Lio/didomi/sdk/events/Event;)V", "Lio/didomi/sdk/models/CurrentUserStatus;", "currentUserStatus", "(Lio/didomi/sdk/models/CurrentUserStatus;)V", "Landroid/os/Handler;", "", "Ljava/util/Set;", "()Ljava/util/Set;", "listeners", "Lio/didomi/sdk/X8;", "listenersForVendorStatuses", "android_release"}, mv = {1, 8, 0})
public class M2 {
    private final Handler a;
    private final Set<DidomiEventListener> b;
    private final Set<VendorStatusListener> c;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/X8;", "it", "", "a", "(Lio/didomi/sdk/X8;)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function1<VendorStatusListener, Boolean> {
        final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str) {
            super(1);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(VendorStatusListener it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(Intrinsics.areEqual(it.getId(), this.a));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public M2() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public M2(Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.a = handler;
        this.b = new CopyOnWriteArraySet();
        this.c = new CopyOnWriteArraySet();
    }

    public /* synthetic */ M2(Handler handler, int i, n nVar) {
        this((i & 1) != 0 ? new Handler(Looper.getMainLooper()) : handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(M2 this$0, Event event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "$event");
        for (DidomiEventListener didomiEventListener : this$0.a()) {
            if (event instanceof ConsentChangedEvent) {
                didomiEventListener.consentChanged((ConsentChangedEvent) event);
            } else if (event instanceof ErrorEvent) {
                didomiEventListener.error((ErrorEvent) event);
            } else if (event instanceof ReadyEvent) {
                didomiEventListener.ready((ReadyEvent) event);
            } else if (event instanceof HideNoticeEvent) {
                didomiEventListener.hideNotice((HideNoticeEvent) event);
            } else if (event instanceof ShowNoticeEvent) {
                didomiEventListener.showNotice((ShowNoticeEvent) event);
            } else if (event instanceof NoticeClickAgreeEvent) {
                didomiEventListener.noticeClickAgree((NoticeClickAgreeEvent) event);
            } else if (event instanceof NoticeClickDisagreeEvent) {
                didomiEventListener.noticeClickDisagree((NoticeClickDisagreeEvent) event);
            } else if (event instanceof NoticeClickMoreInfoEvent) {
                didomiEventListener.noticeClickMoreInfo((NoticeClickMoreInfoEvent) event);
            } else if (event instanceof NoticeClickPrivacyPolicyEvent) {
                didomiEventListener.noticeClickPrivacyPolicy((NoticeClickPrivacyPolicyEvent) event);
            } else if (event instanceof NoticeClickViewVendorsEvent) {
                didomiEventListener.noticeClickViewVendors((NoticeClickViewVendorsEvent) event);
            } else if (event instanceof NoticeClickViewSPIPurposesEvent) {
                didomiEventListener.noticeClickViewSPIPurposes((NoticeClickViewSPIPurposesEvent) event);
            } else if (event instanceof HidePreferencesEvent) {
                didomiEventListener.hidePreferences((HidePreferencesEvent) event);
            } else if (event instanceof ShowPreferencesEvent) {
                didomiEventListener.showPreferences((ShowPreferencesEvent) event);
            } else if (event instanceof PreferencesClickViewPurposesEvent) {
                didomiEventListener.preferencesClickViewPurposes((PreferencesClickViewPurposesEvent) event);
            } else if (event instanceof PreferencesClickViewVendorsEvent) {
                didomiEventListener.preferencesClickViewVendors((PreferencesClickViewVendorsEvent) event);
            } else if (event instanceof PreferencesClickViewSPIPurposesEvent) {
                didomiEventListener.preferencesClickViewSPIPurposes((PreferencesClickViewSPIPurposesEvent) event);
            } else if (event instanceof PreferencesClickAgreeToAllEvent) {
                didomiEventListener.preferencesClickAgreeToAll((PreferencesClickAgreeToAllEvent) event);
            } else if (event instanceof PreferencesClickDisagreeToAllEvent) {
                didomiEventListener.preferencesClickDisagreeToAll((PreferencesClickDisagreeToAllEvent) event);
            } else if (event instanceof PreferencesClickAgreeToAllPurposesEvent) {
                didomiEventListener.preferencesClickAgreeToAllPurposes((PreferencesClickAgreeToAllPurposesEvent) event);
            } else if (event instanceof PreferencesClickDisagreeToAllPurposesEvent) {
                didomiEventListener.preferencesClickDisagreeToAllPurposes((PreferencesClickDisagreeToAllPurposesEvent) event);
            } else if (event instanceof PreferencesClickResetAllPurposesEvent) {
                didomiEventListener.preferencesClickResetAllPurposes((PreferencesClickResetAllPurposesEvent) event);
            } else if (event instanceof PreferencesClickPurposeAgreeEvent) {
                didomiEventListener.preferencesClickPurposeAgree((PreferencesClickPurposeAgreeEvent) event);
            } else if (event instanceof PreferencesClickPurposeDisagreeEvent) {
                didomiEventListener.preferencesClickPurposeDisagree((PreferencesClickPurposeDisagreeEvent) event);
            } else if (event instanceof PreferencesClickCategoryAgreeEvent) {
                didomiEventListener.preferencesClickCategoryAgree((PreferencesClickCategoryAgreeEvent) event);
            } else if (event instanceof PreferencesClickCategoryDisagreeEvent) {
                didomiEventListener.preferencesClickCategoryDisagree((PreferencesClickCategoryDisagreeEvent) event);
            } else if (event instanceof PreferencesClickSaveChoicesEvent) {
                didomiEventListener.preferencesClickSaveChoices((PreferencesClickSaveChoicesEvent) event);
            } else if (event instanceof PreferencesClickAgreeToAllVendorsEvent) {
                didomiEventListener.preferencesClickAgreeToAllVendors((PreferencesClickAgreeToAllVendorsEvent) event);
            } else if (event instanceof PreferencesClickDisagreeToAllVendorsEvent) {
                didomiEventListener.preferencesClickDisagreeToAllVendors((PreferencesClickDisagreeToAllVendorsEvent) event);
            } else if (event instanceof PreferencesClickVendorAgreeEvent) {
                didomiEventListener.preferencesClickVendorAgree((PreferencesClickVendorAgreeEvent) event);
            } else if (event instanceof PreferencesClickVendorDisagreeEvent) {
                didomiEventListener.preferencesClickVendorDisagree((PreferencesClickVendorDisagreeEvent) event);
            } else if (event instanceof PreferencesClickVendorSaveChoicesEvent) {
                didomiEventListener.preferencesClickVendorSaveChoices((PreferencesClickVendorSaveChoicesEvent) event);
            } else if (event instanceof PreferencesClickSPIPurposeAgreeEvent) {
                didomiEventListener.preferencesClickSPIPurposeAgree((PreferencesClickSPIPurposeAgreeEvent) event);
            } else if (event instanceof PreferencesClickSPIPurposeDisagreeEvent) {
                didomiEventListener.preferencesClickSPIPurposeDisagree((PreferencesClickSPIPurposeDisagreeEvent) event);
            } else if (event instanceof PreferencesClickSPICategoryAgreeEvent) {
                didomiEventListener.preferencesClickSPICategoryAgree((PreferencesClickSPICategoryAgreeEvent) event);
            } else if (event instanceof PreferencesClickSPICategoryDisagreeEvent) {
                didomiEventListener.preferencesClickSPICategoryDisagree((PreferencesClickSPICategoryDisagreeEvent) event);
            } else if (event instanceof PreferencesClickSPIPurposeSaveChoicesEvent) {
                didomiEventListener.preferencesClickSPIPurposeSaveChoices((PreferencesClickSPIPurposeSaveChoicesEvent) event);
            } else if (event instanceof SyncDoneEvent) {
                didomiEventListener.syncDone((SyncDoneEvent) event);
            } else if (event instanceof SyncReadyEvent) {
                didomiEventListener.syncReady((SyncReadyEvent) event);
            } else if (event instanceof SyncErrorEvent) {
                didomiEventListener.syncError((SyncErrorEvent) event);
            } else if (event instanceof LanguageUpdatedEvent) {
                didomiEventListener.languageUpdated((LanguageUpdatedEvent) event);
            } else if (event instanceof LanguageUpdateFailedEvent) {
                didomiEventListener.languageUpdateFailed((LanguageUpdateFailedEvent) event);
            }
            if (this$0.a(event) && (didomiEventListener instanceof InitializationEventListener)) {
                this$0.b(didomiEventListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    private boolean b(Event event) {
        return !(event instanceof ConsentChangedEvent ? true : event instanceof ErrorEvent ? true : event instanceof ReadyEvent ? true : event instanceof HideNoticeEvent ? true : event instanceof ShowNoticeEvent ? true : event instanceof NoticeClickAgreeEvent ? true : event instanceof NoticeClickDisagreeEvent ? true : event instanceof NoticeClickViewVendorsEvent ? true : event instanceof NoticeClickViewSPIPurposesEvent ? true : event instanceof NoticeClickMoreInfoEvent ? true : event instanceof NoticeClickPrivacyPolicyEvent ? true : event instanceof HidePreferencesEvent ? true : event instanceof ShowPreferencesEvent ? true : event instanceof PreferencesClickViewPurposesEvent ? true : event instanceof PreferencesClickViewVendorsEvent ? true : event instanceof PreferencesClickViewSPIPurposesEvent ? true : event instanceof PreferencesClickAgreeToAllEvent ? true : event instanceof PreferencesClickDisagreeToAllEvent ? true : event instanceof PreferencesClickAgreeToAllPurposesEvent ? true : event instanceof PreferencesClickDisagreeToAllPurposesEvent ? true : event instanceof PreferencesClickResetAllPurposesEvent ? true : event instanceof PreferencesClickPurposeAgreeEvent ? true : event instanceof PreferencesClickPurposeDisagreeEvent ? true : event instanceof PreferencesClickCategoryAgreeEvent ? true : event instanceof PreferencesClickCategoryDisagreeEvent ? true : event instanceof PreferencesClickSaveChoicesEvent ? true : event instanceof PreferencesClickAgreeToAllVendorsEvent ? true : event instanceof PreferencesClickDisagreeToAllVendorsEvent ? true : event instanceof PreferencesClickVendorAgreeEvent ? true : event instanceof PreferencesClickVendorDisagreeEvent ? true : event instanceof PreferencesClickVendorSaveChoicesEvent ? true : event instanceof PreferencesClickSPIPurposeAgreeEvent ? true : event instanceof PreferencesClickSPIPurposeDisagreeEvent ? true : event instanceof PreferencesClickSPICategoryAgreeEvent ? true : event instanceof PreferencesClickSPICategoryDisagreeEvent ? true : event instanceof PreferencesClickSPIPurposeSaveChoicesEvent ? true : event instanceof SyncDoneEvent ? true : event instanceof SyncReadyEvent ? true : event instanceof SyncErrorEvent ? true : event instanceof LanguageUpdatedEvent ? true : event instanceof LanguageUpdateFailedEvent);
    }

    public Set<DidomiEventListener> a() {
        return this.b;
    }

    public void a(CurrentUserStatus currentUserStatus) {
        Intrinsics.checkNotNullParameter(currentUserStatus, "currentUserStatus");
        for (VendorStatusListener vendorStatusListener : b()) {
            CurrentUserStatus.VendorStatus vendorStatus = currentUserStatus.getVendors().get(vendorStatusListener.getId());
            if (vendorStatus != null && !Intrinsics.areEqual(Boolean.valueOf(vendorStatus.getEnabled()), vendorStatusListener.getEnabled())) {
                vendorStatusListener.getListener().onVendorStatusChanged(vendorStatus);
                vendorStatusListener.a(Boolean.valueOf(vendorStatus.getEnabled()));
            }
        }
    }

    protected boolean a(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return (event instanceof ReadyEvent) || (event instanceof ErrorEvent);
    }

    public boolean a(DidomiEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        return a().add(listener);
    }

    public boolean a(String vendorId) {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        if (Build.VERSION.SDK_INT >= 24) {
            Set<VendorStatusListener> setB = b();
            final a aVar = new a(vendorId);
            return setB.removeIf(new Predicate() { // from class: io.didomi.sdk.wb
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return M2.a(aVar, obj);
                }
            });
        }
        boolean z = false;
        for (VendorStatusListener vendorStatusListener : b()) {
            if (Intrinsics.areEqual(vendorStatusListener.getId(), vendorId) && b().remove(vendorStatusListener)) {
                z = true;
            }
        }
        return z;
    }

    public boolean a(String vendorId, Boolean bool, DidomiVendorStatusListener listener) {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return b().add(new VendorStatusListener(vendorId, bool, listener));
    }

    public Set<VendorStatusListener> b() {
        return this.c;
    }

    public boolean b(DidomiEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        return a().remove(listener);
    }

    public void c(final Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!b(event)) {
            this.a.post(new Runnable() { // from class: io.didomi.sdk.vb
                @Override // java.lang.Runnable
                public final void run() {
                    M2.a(this.a, event);
                }
            });
            return;
        }
        Log.e$default("Unable to trigger event of unknown type " + event.getClass().getName(), null, 2, null);
    }
}
