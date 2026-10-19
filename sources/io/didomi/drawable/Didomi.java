package io.didomi.drawable;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.o2;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import io.didomi.drawable.C1826m;
import io.didomi.drawable.consent.CurrentUserStatusTransaction;
import io.didomi.drawable.consent.model.ConsentChoices;
import io.didomi.drawable.events.ErrorEvent;
import io.didomi.drawable.events.Event;
import io.didomi.drawable.events.EventListener;
import io.didomi.drawable.events.InitializationEventListener;
import io.didomi.drawable.events.LanguageUpdateFailedEvent;
import io.didomi.drawable.events.LanguageUpdatedEvent;
import io.didomi.drawable.events.ReadyEvent;
import io.didomi.drawable.events.SyncDoneEvent;
import io.didomi.drawable.events.SyncErrorEvent;
import io.didomi.drawable.exceptions.DidomiNotReadyException;
import io.didomi.drawable.functionalinterfaces.DidomiCallable;
import io.didomi.drawable.functionalinterfaces.DidomiEventListener;
import io.didomi.drawable.functionalinterfaces.DidomiVendorStatusListener;
import io.didomi.drawable.lifecycle.DidomiLifecycleHandler;
import io.didomi.drawable.models.CurrentUserStatus;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.UserStatus;
import io.didomi.drawable.user.UserAuth;
import io.didomi.drawable.user.UserAuthParams;
import io.didomi.drawable.user.UserAuthWithoutParams;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

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
@Keep
@Metadata(d1 = {"\u0000\u0086\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\"\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010$\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 Þ\u00022\u00020\u0001:\u0002Þ\u0002B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000fJ\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u001c\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u001e\u0010\u0003J\u001d\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010$\u001a\u00020\u0006¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010(\u001a\u00020\u0006¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0018¢\u0006\u0004\b,\u0010-J\r\u0010.\u001a\u00020\u0018¢\u0006\u0004\b.\u0010-J\r\u0010/\u001a\u00020\u0018¢\u0006\u0004\b/\u0010-J\r\u00100\u001a\u00020\u0010¢\u0006\u0004\b0\u0010\u0012J\u000f\u00101\u001a\u00020\u0010H\u0007¢\u0006\u0004\b1\u0010\u0012J\r\u00102\u001a\u00020\u0010¢\u0006\u0004\b2\u0010\u0012J\r\u00103\u001a\u00020\u0010¢\u0006\u0004\b3\u0010\u0012J\u008d\u0001\u0010=\u001a\u00020\u00102\u000e\u00105\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00107\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00109\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u000104¢\u0006\u0004\b=\u0010>J-\u0010=\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00102\u0006\u0010A\u001a\u00020\u00102\u0006\u0010B\u001a\u00020\u0010¢\u0006\u0004\b=\u0010CJ\u0015\u0010F\u001a\u00020\u00102\u0006\u0010E\u001a\u00020D¢\u0006\u0004\bF\u0010GJ\u000f\u0010I\u001a\u00020HH\u0007¢\u0006\u0004\bI\u0010JJ\r\u0010K\u001a\u00020H¢\u0006\u0004\bK\u0010JJ\r\u0010L\u001a\u00020\u0004¢\u0006\u0004\bL\u0010\u0003J\u0015\u0010O\u001a\u00020\u00042\u0006\u0010N\u001a\u00020M¢\u0006\u0004\bO\u0010PJ\u0015\u0010Q\u001a\u00020\u00042\u0006\u0010N\u001a\u00020M¢\u0006\u0004\bQ\u0010PJ\u0015\u0010S\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020R¢\u0006\u0004\bS\u0010TJ\u0015\u0010S\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020U¢\u0006\u0004\bS\u0010VJ\u0015\u0010W\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020U¢\u0006\u0004\bW\u0010VJ\u001d\u0010X\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bX\u0010\u000bJ\u0015\u0010Y\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\bY\u0010ZJ\u0017\u0010[\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b[\u0010\u000fJ\u0017\u0010\\\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\\\u0010\u000fJ\u0017\u0010]\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b]\u0010\u000fJ\r\u0010^\u001a\u00020\u0004¢\u0006\u0004\b^\u0010\u0003J\r\u0010_\u001a\u00020\u0010¢\u0006\u0004\b_\u0010\u0012J%\u0010a\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010`\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\ba\u0010bJ\r\u0010c\u001a\u00020\u0004¢\u0006\u0004\bc\u0010\u0003J\r\u0010d\u001a\u00020\u0010¢\u0006\u0004\bd\u0010\u0012J\u0015\u0010f\u001a\u00020\u00042\u0006\u0010e\u001a\u00020\u0006¢\u0006\u0004\bf\u0010ZJ#\u0010i\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010h2\u0006\u0010g\u001a\u00020\u0006¢\u0006\u0004\bi\u0010jJ\u0015\u0010k\u001a\u00020\u00062\u0006\u0010g\u001a\u00020\u0006¢\u0006\u0004\bk\u0010lJ\u001b\u0010n\u001a\u00020\u00062\n\b\u0002\u0010m\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\bn\u0010lJ\u001d\u0010q\u001a\u00020\u00042\u0006\u0010o\u001a\u00020\u00062\u0006\u0010p\u001a\u00020\u0006¢\u0006\u0004\bq\u0010rJ/\u0010u\u001a\u00020\u00042\u0006\u0010s\u001a\u00020\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\bu\u0010vJA\u0010u\u001a\u00020\u00042\u0006\u0010x\u001a\u00020w2\u0010\b\u0002\u0010z\u001a\n\u0012\u0004\u0012\u00020w\u0018\u00010y2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010t\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\bu\u0010{J\r\u0010|\u001a\u00020\u0004¢\u0006\u0004\b|\u0010\u0003J$\u0010\u0080\u0001\u001a\u00020\u00102\u0006\u0010}\u001a\u00020\u00102\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0000¢\u0006\u0004\b~\u0010\u007fJ#\u0010\u0082\u0001\u001a\u00020\u00042\u0006\u0010g\u001a\u00020\u00062\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0001¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001R!\u0010\u0089\u0001\u001a\u00030\u0084\u00018@X\u0080\u0084\u0002¢\u0006\u0010\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001R!\u0010\u008e\u0001\u001a\u00030\u008a\u00018@X\u0080\u0084\u0002¢\u0006\u0010\n\u0006\b\u008b\u0001\u0010\u0086\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R!\u0010\u0093\u0001\u001a\u00030\u008f\u00018@X\u0080\u0084\u0002¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u0086\u0001\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001R!\u0010\u0098\u0001\u001a\u00030\u0094\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u0086\u0001\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0019\u0010\u0099\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R1\u0010\u009c\u0001\u001a\u00030\u009b\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\b\u009c\u0001\u0010\u009d\u0001\u0012\u0005\b¢\u0001\u0010\u0003\u001a\u0006\b\u009e\u0001\u0010\u009f\u0001\"\u0006\b \u0001\u0010¡\u0001R1\u0010¤\u0001\u001a\u00030£\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\b¤\u0001\u0010¥\u0001\u0012\u0005\bª\u0001\u0010\u0003\u001a\u0006\b¦\u0001\u0010§\u0001\"\u0006\b¨\u0001\u0010©\u0001R*\u0010¬\u0001\u001a\u00030«\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b¬\u0001\u0010\u00ad\u0001\u001a\u0006\b®\u0001\u0010¯\u0001\"\u0006\b°\u0001\u0010±\u0001R*\u0010³\u0001\u001a\u00030²\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b³\u0001\u0010´\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001\"\u0006\b·\u0001\u0010¸\u0001R*\u0010º\u0001\u001a\u00030¹\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bº\u0001\u0010»\u0001\u001a\u0006\b¼\u0001\u0010½\u0001\"\u0006\b¾\u0001\u0010¿\u0001R*\u0010Á\u0001\u001a\u00030À\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bÁ\u0001\u0010Â\u0001\u001a\u0006\bÃ\u0001\u0010Ä\u0001\"\u0006\bÅ\u0001\u0010Æ\u0001R*\u0010È\u0001\u001a\u00030Ç\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bÈ\u0001\u0010É\u0001\u001a\u0006\bÊ\u0001\u0010Ë\u0001\"\u0006\bÌ\u0001\u0010Í\u0001R1\u0010Ï\u0001\u001a\u00030Î\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\bÏ\u0001\u0010Ð\u0001\u0012\u0005\bÕ\u0001\u0010\u0003\u001a\u0006\bÑ\u0001\u0010Ò\u0001\"\u0006\bÓ\u0001\u0010Ô\u0001R*\u0010×\u0001\u001a\u00030Ö\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b×\u0001\u0010Ø\u0001\u001a\u0006\bÙ\u0001\u0010Ú\u0001\"\u0006\bÛ\u0001\u0010Ü\u0001R*\u0010Þ\u0001\u001a\u00030Ý\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bÞ\u0001\u0010ß\u0001\u001a\u0006\bà\u0001\u0010á\u0001\"\u0006\bâ\u0001\u0010ã\u0001R*\u0010å\u0001\u001a\u00030ä\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bå\u0001\u0010æ\u0001\u001a\u0006\bç\u0001\u0010è\u0001\"\u0006\bé\u0001\u0010ê\u0001R*\u0010ì\u0001\u001a\u00030ë\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bì\u0001\u0010í\u0001\u001a\u0006\bî\u0001\u0010ï\u0001\"\u0006\bð\u0001\u0010ñ\u0001R*\u0010ó\u0001\u001a\u00030ò\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bó\u0001\u0010ô\u0001\u001a\u0006\bõ\u0001\u0010ö\u0001\"\u0006\b÷\u0001\u0010ø\u0001R*\u0010ú\u0001\u001a\u00030ù\u00018\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\bú\u0001\u0010û\u0001\u001a\u0006\bü\u0001\u0010ý\u0001\"\u0006\bþ\u0001\u0010ÿ\u0001R*\u0010\u0081\u0002\u001a\u00030\u0080\u00028\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b\u0081\u0002\u0010\u0082\u0002\u001a\u0006\b\u0083\u0002\u0010\u0084\u0002\"\u0006\b\u0085\u0002\u0010\u0086\u0002R*\u0010\u0088\u0002\u001a\u00030\u0087\u00028\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b\u0088\u0002\u0010\u0089\u0002\u001a\u0006\b\u008a\u0002\u0010\u008b\u0002\"\u0006\b\u008c\u0002\u0010\u008d\u0002R*\u0010\u008f\u0002\u001a\u00030\u008e\u00028\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b\u008f\u0002\u0010\u0090\u0002\u001a\u0006\b\u0091\u0002\u0010\u0092\u0002\"\u0006\b\u0093\u0002\u0010\u0094\u0002R*\u0010\u0096\u0002\u001a\u00030\u0095\u00028\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b\u0096\u0002\u0010\u0097\u0002\u001a\u0006\b\u0098\u0002\u0010\u0099\u0002\"\u0006\b\u009a\u0002\u0010\u009b\u0002R*\u0010\u009d\u0002\u001a\u00030\u009c\u00028\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b\u009d\u0002\u0010\u009e\u0002\u001a\u0006\b\u009f\u0002\u0010 \u0002\"\u0006\b¡\u0002\u0010¢\u0002R*\u0010¤\u0002\u001a\u00030£\u00028\u0000@\u0000X\u0081.¢\u0006\u0018\n\u0006\b¤\u0002\u0010¥\u0002\u001a\u0006\b¦\u0002\u0010§\u0002\"\u0006\b¨\u0002\u0010©\u0002R\u0018\u0010«\u0002\u001a\u00030ª\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0002\u0010¬\u0002R\u0018\u0010®\u0002\u001a\u00030\u00ad\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b®\u0002\u0010¯\u0002R)\u0010±\u0002\u001a\u00020\u00102\u0007\u0010°\u0002\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0006\b±\u0002\u0010\u009a\u0001\u001a\u0005\b±\u0002\u0010\u0012R)\u0010²\u0002\u001a\u00020\u00102\u0007\u0010°\u0002\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0006\b²\u0002\u0010\u009a\u0001\u001a\u0005\b²\u0002\u0010\u0012R)\u0010³\u0002\u001a\u00020\u00102\u0007\u0010°\u0002\u001a\u00020\u00108\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0006\b³\u0002\u0010\u009a\u0001\u001a\u0005\b³\u0002\u0010\u0012R(\u0010´\u0002\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0006\b´\u0002\u0010\u009a\u0001\u001a\u0005\bµ\u0002\u0010\u0012\"\u0006\b¶\u0002\u0010·\u0002R\u0017\u0010¸\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0002\u0010¹\u0002R\u001d\u0010º\u0002\u001a\u00020\u00108FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b»\u0002\u0010\u0003\u001a\u0005\bº\u0002\u0010\u0012R\u001d\u0010¼\u0002\u001a\u00020\u00108FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b½\u0002\u0010\u0003\u001a\u0005\b¼\u0002\u0010\u0012R\u001d\u0010¾\u0002\u001a\u00020\u00108FX\u0087\u0004¢\u0006\u000e\u0012\u0005\b¿\u0002\u0010\u0003\u001a\u0005\b¾\u0002\u0010\u0012R\u001f\u0010Ä\u0002\u001a\u00030À\u00028FX\u0087\u0004¢\u0006\u000f\u0012\u0005\bÃ\u0002\u0010\u0003\u001a\u0006\bÁ\u0002\u0010Â\u0002R\u0018\u0010È\u0002\u001a\u00030Å\u00028@X\u0080\u0004¢\u0006\b\u001a\u0006\bÆ\u0002\u0010Ç\u0002R\u0013\u0010Ê\u0002\u001a\u00020\u00108F¢\u0006\u0007\u001a\u0005\bÉ\u0002\u0010\u0012R\u0013\u0010Ë\u0002\u001a\u00020\u00108F¢\u0006\u0007\u001a\u0005\bË\u0002\u0010\u0012R\u0013\u0010E\u001a\u00020D8F¢\u0006\b\u001a\u0006\bÌ\u0002\u0010Í\u0002R\u001a\u0010Ð\u0002\u001a\b\u0012\u0004\u0012\u00020%048F¢\u0006\b\u001a\u0006\bÎ\u0002\u0010Ï\u0002R\u001a\u0010Ò\u0002\u001a\b\u0012\u0004\u0012\u00020\u0006048F¢\u0006\b\u001a\u0006\bÑ\u0002\u0010Ï\u0002R\u001a\u0010Ô\u0002\u001a\b\u0012\u0004\u0012\u00020)048F¢\u0006\b\u001a\u0006\bÓ\u0002\u0010Ï\u0002R\u001a\u0010Ö\u0002\u001a\b\u0012\u0004\u0012\u00020\u0006048F¢\u0006\b\u001a\u0006\bÕ\u0002\u0010Ï\u0002R\u0015\u0010Ú\u0002\u001a\u00030×\u00028F¢\u0006\b\u001a\u0006\bØ\u0002\u0010Ù\u0002R\u0014\u0010Ý\u0002\u001a\u00020\u00068F¢\u0006\b\u001a\u0006\bÛ\u0002\u0010Ü\u0002¨\u0006ß\u0002"}, d2 = {"Lio/didomi/sdk/Didomi;", "", "<init>", "()V", "", "resetComponents", "", "id", "Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "registerVendorStatusListener", "(Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V", "Landroidx/fragment/app/FragmentActivity;", "activity", "setupUIOnSyncDone", "(Landroidx/fragment/app/FragmentActivity;)V", "", "handleOrganizationUserChange", "()Z", "syncIfRequired", "Landroid/app/Application;", "application", "preparePageViewEvent", "(Landroid/app/Application;)V", "", "minLevel", "setLogLevel", "(I)V", "ready$android_release", o2.h.s, "readyOrThrow$android_release", "readyOrThrow", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", MobileAdsBridgeBase.initializeMethodName, "(Landroid/app/Application;Lio/didomi/sdk/DidomiInitializeParameters;)V", "purposeId", "Lio/didomi/sdk/Purpose;", "getPurpose", "(Ljava/lang/String;)Lio/didomi/sdk/Purpose;", "vendorId", "Lio/didomi/sdk/Vendor;", "getVendor", "(Ljava/lang/String;)Lio/didomi/sdk/Vendor;", "getTotalVendorCount", "()I", "getIabVendorCount", "getNonIabVendorCount", "shouldUserStatusBeCollected", "shouldConsentBeCollected", "setUserAgreeToAll", "setUserDisagreeToAll", "", "enabledConsentPurposeIds", "disabledConsentPurposeIds", "enabledLIPurposeIds", "disabledLIPurposeIds", "enabledConsentVendorIds", "disabledConsentVendorIds", "enabledLIVendorIds", "disabledLIVendorIds", "setUserStatus", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z", "purposesConsentStatus", "purposesLIStatus", "vendorsConsentStatus", "vendorsLIStatus", "(ZZZZ)Z", "Lio/didomi/sdk/models/CurrentUserStatus;", "currentUserStatus", "setCurrentUserStatus", "(Lio/didomi/sdk/models/CurrentUserStatus;)Z", "Lio/didomi/sdk/consent/CurrentUserStatusTransaction;", "openCurrentUserTransaction", "()Lio/didomi/sdk/consent/CurrentUserStatusTransaction;", "openCurrentUserStatusTransaction", "reset", "Lio/didomi/sdk/functionalinterfaces/DidomiCallable;", "callback", "onReady", "(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V", "onError", "Lio/didomi/sdk/events/EventListener;", "addEventListener", "(Lio/didomi/sdk/events/EventListener;)V", "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;", "(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)V", "removeEventListener", "addVendorStatusListener", "removeVendorStatusListener", "(Ljava/lang/String;)V", "setupUI", "forceShowNotice", "showNotice", "hideNotice", "isNoticeVisible", "view", "showPreferences", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V", "hidePreferences", "isPreferencesVisible", "languageCode", "updateSelectedLanguage", "key", "", "getText", "(Ljava/lang/String;)Ljava/util/Map;", "getTranslatedText", "(Ljava/lang/String;)Ljava/lang/String;", "extra", "getJavaScriptForWebView", "name", "version", "setUserAgent", "(Ljava/lang/String;Ljava/lang/String;)V", "organizationUserId", "isUnderage", "setUser", "(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V", "Lio/didomi/sdk/user/UserAuthParams;", "userAuthParams", "", "synchronizedUsers", "(Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V", "clearUser", "blocking", "sync$android_release", "(ZLandroidx/fragment/app/FragmentActivity;)Z", "sync", "value", "setLocalProperty", "(Ljava/lang/String;Ljava/lang/Object;)V", "Lio/didomi/sdk/M2;", "eventsRepository$delegate", "Lkotlin/Lazy;", "getEventsRepository$android_release", "()Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository$delegate", "getOrganizationUserRepository$android_release", "()Lio/didomi/sdk/P3;", "organizationUserRepository", "Lio/didomi/sdk/F8;", "userAgentRepository$delegate", "getUserAgentRepository$android_release", "()Lio/didomi/sdk/F8;", "userAgentRepository", "Lio/didomi/sdk/z3;", "localPropertiesRepository$delegate", "getLocalPropertiesRepository", "()Lio/didomi/sdk/z3;", "localPropertiesRepository", "requestResetAtInitialize", "Z", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/apiEvents/b;", "getApiEventsRepository", "()Lio/didomi/sdk/apiEvents/b;", "setApiEventsRepository", "(Lio/didomi/sdk/apiEvents/b;)V", "getApiEventsRepository$annotations", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/H;", "getConfigurationRepository", "()Lio/didomi/sdk/H;", "setConfigurationRepository", "(Lio/didomi/sdk/H;)V", "getConfigurationRepository$annotations", "Lio/didomi/sdk/Z4;", "purposesTranslationsRepository", "Lio/didomi/sdk/Z4;", "getPurposesTranslationsRepository$android_release", "()Lio/didomi/sdk/Z4;", "setPurposesTranslationsRepository$android_release", "(Lio/didomi/sdk/Z4;)V", "Lio/didomi/sdk/J;", "connectivityHelper", "Lio/didomi/sdk/J;", "getConnectivityHelper$android_release", "()Lio/didomi/sdk/J;", "setConnectivityHelper$android_release", "(Lio/didomi/sdk/J;)V", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/V;", "getConsentRepository$android_release", "()Lio/didomi/sdk/V;", "setConsentRepository$android_release", "(Lio/didomi/sdk/V;)V", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/Z;", "getContextHelper$android_release", "()Lio/didomi/sdk/Z;", "setContextHelper$android_release", "(Lio/didomi/sdk/Z;)V", "Lio/didomi/sdk/Z2;", "httpRequestHelper", "Lio/didomi/sdk/Z2;", "getHttpRequestHelper$android_release", "()Lio/didomi/sdk/Z2;", "setHttpRequestHelper$android_release", "(Lio/didomi/sdk/Z2;)V", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/v3;", "getLanguagesHelper", "()Lio/didomi/sdk/v3;", "setLanguagesHelper", "(Lio/didomi/sdk/v3;)V", "getLanguagesHelper$annotations", "Lio/didomi/sdk/l5;", "remoteFilesHelper", "Lio/didomi/sdk/l5;", "getRemoteFilesHelper$android_release", "()Lio/didomi/sdk/l5;", "setRemoteFilesHelper$android_release", "(Lio/didomi/sdk/l5;)V", "Lio/didomi/sdk/s5;", "resourcesHelper", "Lio/didomi/sdk/s5;", "getResourcesHelper$android_release", "()Lio/didomi/sdk/s5;", "setResourcesHelper$android_release", "(Lio/didomi/sdk/s5;)V", "Landroid/content/SharedPreferences;", "sharedPreferences", "Landroid/content/SharedPreferences;", "getSharedPreferences$android_release", "()Landroid/content/SharedPreferences;", "setSharedPreferences$android_release", "(Landroid/content/SharedPreferences;)V", "Lio/didomi/sdk/c6;", "syncRepository", "Lio/didomi/sdk/c6;", "getSyncRepository$android_release", "()Lio/didomi/sdk/c6;", "setSyncRepository$android_release", "(Lio/didomi/sdk/c6;)V", "Lio/didomi/sdk/h3;", "iabStorageRepository", "Lio/didomi/sdk/h3;", "getIabStorageRepository$android_release", "()Lio/didomi/sdk/h3;", "setIabStorageRepository$android_release", "(Lio/didomi/sdk/h3;)V", "Lio/didomi/sdk/E8;", "uiStateRepository", "Lio/didomi/sdk/E8;", "getUiStateRepository$android_release", "()Lio/didomi/sdk/E8;", "setUiStateRepository$android_release", "(Lio/didomi/sdk/E8;)V", "Lio/didomi/sdk/D8;", "uiProvider", "Lio/didomi/sdk/D8;", "getUiProvider$android_release", "()Lio/didomi/sdk/D8;", "setUiProvider$android_release", "(Lio/didomi/sdk/D8;)V", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/G8;", "getUserChoicesInfoProvider$android_release", "()Lio/didomi/sdk/G8;", "setUserChoicesInfoProvider$android_release", "(Lio/didomi/sdk/G8;)V", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lio/didomi/sdk/P8;", "getUserStatusRepository$android_release", "()Lio/didomi/sdk/P8;", "setUserStatusRepository$android_release", "(Lio/didomi/sdk/P8;)V", "Lio/didomi/sdk/M8;", "userRepository", "Lio/didomi/sdk/M8;", "getUserRepository$android_release", "()Lio/didomi/sdk/M8;", "setUserRepository$android_release", "(Lio/didomi/sdk/M8;)V", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/V8;", "getVendorRepository$android_release", "()Lio/didomi/sdk/V8;", "setVendorRepository$android_release", "(Lio/didomi/sdk/V8;)V", "Lio/didomi/sdk/I3;", "navigationManager", "Lio/didomi/sdk/I3;", "getNavigationManager$android_release", "()Lio/didomi/sdk/I3;", "setNavigationManager$android_release", "(Lio/didomi/sdk/I3;)V", "Lio/didomi/sdk/K0;", "componentProvider", "Lio/didomi/sdk/K0;", "Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;", "lifecycleHandler", "Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;", "<set-?>", "isReady", "isError", "isInitialized", "isInitializeInProgress", "isInitializeInProgress$android_release", "setInitializeInProgress$android_release", "(Z)V", "initializationEventLock", "Ljava/lang/Object;", "isConsentRequired", "isConsentRequired$annotations", "isUserConsentStatusPartial", "isUserConsentStatusPartial$annotations", "isUserLegitimateInterestStatusPartial", "isUserLegitimateInterestStatusPartial$annotations", "Lio/didomi/sdk/models/UserStatus;", "getUserStatus", "()Lio/didomi/sdk/models/UserStatus;", "getUserStatus$annotations", "userStatus", "Lio/didomi/sdk/J0;", "getComponent$android_release", "()Lio/didomi/sdk/J0;", "component", "getHasAnyStatus", "hasAnyStatus", "isUserStatusPartial", "getCurrentUserStatus", "()Lio/didomi/sdk/models/CurrentUserStatus;", "getRequiredPurposes", "()Ljava/util/Set;", "requiredPurposes", "getRequiredPurposeIds", "requiredPurposeIds", "getRequiredVendors", "requiredVendors", "getRequiredVendorIds", "requiredVendorIds", "Lio/didomi/sdk/E0;", "getDeviceType", "()Lio/didomi/sdk/E0;", "deviceType", "getQueryStringForWebView", "()Ljava/lang/String;", "queryStringForWebView", "Companion", "android_release"}, mv = {1, 8, 0})
public final class Didomi {
    public static final Companion Companion = new Companion(null);
    public static final String VIEW_PURPOSES = "purposes";
    public static final String VIEW_SENSITIVE_PERSONAL_INFORMATION = "sensitive-personal-information";
    public static final String VIEW_VENDORS = "vendors";
    private static Didomi currentInstance;
    public io.didomi.drawable.apiEvents.b apiEventsRepository;
    private final K0 componentProvider;
    public H configurationRepository;
    public J connectivityHelper;
    public V consentRepository;
    public Z contextHelper;
    private final Lazy eventsRepository$delegate;
    public Z2 httpRequestHelper;
    public InterfaceC1780h3 iabStorageRepository;
    private final Object initializationEventLock;
    private boolean isError;
    private boolean isInitializeInProgress;
    private boolean isInitialized;
    private boolean isReady;
    public C1920v3 languagesHelper;
    private final DidomiLifecycleHandler lifecycleHandler;
    private final Lazy localPropertiesRepository$delegate;
    public I3 navigationManager;
    private final Lazy organizationUserRepository$delegate;
    public Z4 purposesTranslationsRepository;
    public C1822l5 remoteFilesHelper;
    private boolean requestResetAtInitialize;
    public C1892s5 resourcesHelper;
    public SharedPreferences sharedPreferences;
    public C1733c6 syncRepository;
    public D8 uiProvider;
    public UIStateRepository uiStateRepository;
    private final Lazy userAgentRepository$delegate;
    public G8 userChoicesInfoProvider;
    public M8 userRepository;
    public P8 userStatusRepository;
    public V8 vendorRepository;

    @Keep
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lio/didomi/sdk/Didomi$Companion;", "", "()V", "VIEW_PURPOSES", "", "VIEW_SENSITIVE_PERSONAL_INFORMATION", "VIEW_VENDORS", "currentInstance", "Lio/didomi/sdk/Didomi;", "clearInstance", "", "getInstance", "android_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        @VisibleForTesting
        public final void clearInstance() {
            Didomi.currentInstance = null;
        }

        public final Didomi getInstance() {
            if (Didomi.currentInstance == null) {
                Didomi.currentInstance = new Didomi(null);
            }
            Didomi didomi = Didomi.currentInstance;
            Intrinsics.checkNotNull(didomi, "null cannot be cast to non-null type io.didomi.sdk.Didomi");
            return didomi;
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC1910u3.values().length];
            try {
                iArr[EnumC1910u3.InvalidCode.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC1910u3.NotEnabled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC1910u3.Success.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/M2;", "a", "()Lio/didomi/sdk/M2;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<M2> {
        public static final b a = new b();

        b() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final M2 invoke() {
            return new M2(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/z3;", "a", "()Lio/didomi/sdk/z3;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<C1960z3> {
        public static final c a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1960z3 invoke() {
            return new C1960z3();
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"io/didomi/sdk/Didomi$d", "Lio/didomi/sdk/events/InitializationEventListener;", "Lio/didomi/sdk/events/ErrorEvent;", NotificationCompat.CATEGORY_EVENT, "", "error", "(Lio/didomi/sdk/events/ErrorEvent;)V", "android_release"}, mv = {1, 8, 0})
    public static final class d extends InitializationEventListener {
        final /* synthetic */ DidomiCallable a;

        d(DidomiCallable didomiCallable) {
            this.a = didomiCallable;
        }

        @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
        public void error(ErrorEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            try {
                this.a.call();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"io/didomi/sdk/Didomi$e", "Lio/didomi/sdk/events/InitializationEventListener;", "Lio/didomi/sdk/events/ReadyEvent;", NotificationCompat.CATEGORY_EVENT, "", o2.h.s, "(Lio/didomi/sdk/events/ReadyEvent;)V", "android_release"}, mv = {1, 8, 0})
    public static final class e extends InitializationEventListener {
        final /* synthetic */ DidomiCallable a;

        e(DidomiCallable didomiCallable) {
            this.a = didomiCallable;
        }

        @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
        public void ready(ReadyEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            try {
                this.a.call();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/P3;", "a", "()Lio/didomi/sdk/P3;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<P3> {
        public static final f a = new f();

        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final P3 invoke() {
            return new P3();
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"io/didomi/sdk/Didomi$g", "Lio/didomi/sdk/m$a;", "", "a", "()V", "android_release"}, mv = {1, 8, 0})
    public static final class g implements C1826m.a {
        g() {
        }

        @Override // io.didomi.drawable.C1826m.a
        public void a() {
            Didomi.this.getApiEventsRepository().f();
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"io/didomi/sdk/Didomi$h", "Lio/didomi/sdk/events/EventListener;", "Lio/didomi/sdk/events/SyncDoneEvent;", NotificationCompat.CATEGORY_EVENT, "", "syncDone", "(Lio/didomi/sdk/events/SyncDoneEvent;)V", "Lio/didomi/sdk/events/SyncErrorEvent;", "syncError", "(Lio/didomi/sdk/events/SyncErrorEvent;)V", "android_release"}, mv = {1, 8, 0})
    public static final class h extends EventListener {
        final /* synthetic */ FragmentActivity b;

        h(FragmentActivity fragmentActivity) {
            this.b = fragmentActivity;
        }

        @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
        public void syncDone(SyncDoneEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            Didomi.this.removeEventListener(this);
            Didomi.this.setupUI(this.b);
        }

        @Override // io.didomi.drawable.events.EventListener, io.didomi.drawable.functionalinterfaces.DidomiEventListener
        public void syncError(SyncErrorEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            Didomi.this.removeEventListener(this);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/F8;", "a", "()Lio/didomi/sdk/F8;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<F8> {
        public static final i a = new i();

        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final F8 invoke() {
            return new F8();
        }
    }

    private Didomi() {
        this.eventsRepository$delegate = LazyKt__LazyJVMKt.lazy(b.a);
        this.organizationUserRepository$delegate = LazyKt__LazyJVMKt.lazy(f.a);
        this.userAgentRepository$delegate = LazyKt__LazyJVMKt.lazy(i.a);
        this.localPropertiesRepository$delegate = LazyKt__LazyJVMKt.lazy(c.a);
        this.componentProvider = K0.a;
        this.lifecycleHandler = new DidomiLifecycleHandler();
        this.initializationEventLock = new Object();
    }

    public /* synthetic */ Didomi(n nVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addVendorStatusListener$lambda$9(Didomi this$0, String id, DidomiVendorStatusListener listener) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(id, "$id");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        this$0.registerVendorStatusListener(id, listener);
    }

    @VisibleForTesting
    public static final void clearInstance() {
        Companion.clearInstance();
    }

    @VisibleForTesting
    public static /* synthetic */ void getApiEventsRepository$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getConfigurationRepository$annotations() {
    }

    public static final Didomi getInstance() {
        return Companion.getInstance();
    }

    public static /* synthetic */ String getJavaScriptForWebView$default(Didomi didomi, String str, int i2, Object obj) throws DidomiNotReadyException {
        if ((i2 & 1) != 0) {
            str = null;
        }
        return didomi.getJavaScriptForWebView(str);
    }

    @VisibleForTesting
    public static /* synthetic */ void getLanguagesHelper$annotations() {
    }

    private final C1960z3 getLocalPropertiesRepository() {
        return (C1960z3) this.localPropertiesRepository$delegate.getValue();
    }

    public static /* synthetic */ void getUserStatus$annotations() {
    }

    private final boolean handleOrganizationUserChange() {
        UserAuth userAuth = getOrganizationUserRepository$android_release().getUserAuth();
        String id = userAuth != null ? userAuth.getId() : null;
        String lastSyncedUserId = getConsentRepository$android_release().b().getLastSyncedUserId();
        boolean z = !Intrinsics.areEqual(lastSyncedUserId, id);
        if (lastSyncedUserId != null && z && id != null && !StringsKt__StringsJVMKt.isBlank(id)) {
            reset();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$5(DidomiInitializeParameters parameters, Didomi this$0, Application application) {
        Intrinsics.checkNotNullParameter(parameters, "$parameters");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(application, "$application");
        try {
            C1849o2.a(parameters);
            K0 k0 = this$0.componentProvider;
            Context applicationContext = application.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "application.applicationContext");
            k0.a(applicationContext, this$0.getEventsRepository$android_release(), this$0.getUserAgentRepository$android_release(), this$0.getOrganizationUserRepository$android_release(), this$0.getLocalPropertiesRepository(), parameters);
            this$0.componentProvider.a().a(this$0);
            this$0.getUserChoicesInfoProvider$android_release().j();
            B8 b8 = B8.a;
            b8.a("SDK configuration loaded");
            this$0.getIabStorageRepository$android_release().a(this$0.getConfigurationRepository(), this$0.getSharedPreferences$android_release());
            b8.a("Consent parameters initialized");
            synchronized (this$0.initializationEventLock) {
                this$0.isReady = true;
                this$0.isInitializeInProgress = false;
                try {
                    this$0.getIabStorageRepository$android_release().a(this$0.getSharedPreferences$android_release(), this$0.isConsentRequired());
                    if (this$0.requestResetAtInitialize) {
                        this$0.resetComponents();
                    }
                    this$0.getOrganizationUserRepository$android_release().a(parameters.isUnderage);
                    sync$android_release$default(this$0, true, null, 2, null);
                    this$0.getEventsRepository$android_release().c(new ReadyEvent());
                    b8.a("SDK is ready!");
                    this$0.preparePageViewEvent(application);
                } catch (Exception e2) {
                    Log.e("Unable to initialize the SDK", e2);
                    B8.a.a("SDK encountered an error");
                }
                v vVar = v.a;
            }
        } catch (Exception e3) {
            Log.e("Unable to initialize the SDK", e3);
            B8.a.a("SDK encountered an error");
            if (this$0.ready$android_release()) {
                return;
            }
            synchronized (this$0.initializationEventLock) {
                this$0.isInitializeInProgress = false;
                this$0.isError = true;
                this$0.getEventsRepository$android_release().c(new ErrorEvent(e3.getMessage()));
                v vVar2 = v.a;
            }
        }
    }

    public static /* synthetic */ void isConsentRequired$annotations() {
    }

    public static /* synthetic */ void isUserConsentStatusPartial$annotations() {
    }

    public static /* synthetic */ void isUserLegitimateInterestStatusPartial$annotations() {
    }

    private final void preparePageViewEvent(Application application) {
        C1826m.a.a(application, new g());
    }

    private final void registerVendorStatusListener(String str, DidomiVendorStatusListener didomiVendorStatusListener) throws DidomiNotReadyException {
        CurrentUserStatus.VendorStatus vendorStatus = getCurrentUserStatus().getVendors().get(str);
        if (vendorStatus == null) {
            Log.w$default("Vendor with id '" + str + "' not found", null, 2, null);
            return;
        }
        if (getEventsRepository$android_release().a(vendorStatus.getId(), getConsentRepository$android_release().f(str) ? null : Boolean.valueOf(vendorStatus.getEnabled()), didomiVendorStatusListener)) {
            return;
        }
        Log.w$default("Listener for vendor with id '" + str + "' not added", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeVendorStatusListener$lambda$10(Didomi this$0, String id) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(id, "$id");
        this$0.getEventsRepository$android_release().a(id);
    }

    private final void resetComponents() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        getConsentRepository$android_release().m();
        getUserChoicesInfoProvider$android_release().j();
        getUserRepository$android_release().e();
        getUiStateRepository$android_release().a(false);
        this.requestResetAtInitialize = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setUser$default(Didomi didomi, UserAuthParams userAuthParams, List list, FragmentActivity fragmentActivity, Boolean bool, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list = null;
        }
        if ((i2 & 4) != 0) {
            fragmentActivity = null;
        }
        if ((i2 & 8) != 0) {
            bool = null;
        }
        didomi.setUser(userAuthParams, list, fragmentActivity, bool);
    }

    public static /* synthetic */ void setUser$default(Didomi didomi, String str, FragmentActivity fragmentActivity, Boolean bool, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            fragmentActivity = null;
        }
        if ((i2 & 4) != 0) {
            bool = null;
        }
        didomi.setUser(str, fragmentActivity, bool);
    }

    private final void setupUIOnSyncDone(FragmentActivity fragmentActivity) {
        addEventListener((EventListener) new h(fragmentActivity));
    }

    public static /* synthetic */ void showPreferences$default(Didomi didomi, FragmentActivity fragmentActivity, String str, int i2, Object obj) throws DidomiNotReadyException {
        if ((i2 & 2) != 0) {
            str = null;
        }
        didomi.showPreferences(fragmentActivity, str);
    }

    public static /* synthetic */ boolean sync$android_release$default(Didomi didomi, boolean z, FragmentActivity fragmentActivity, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            fragmentActivity = null;
        }
        return didomi.sync$android_release(z, fragmentActivity);
    }

    private final void syncIfRequired(FragmentActivity fragmentActivity) {
        if (ready$android_release()) {
            sync$android_release(false, fragmentActivity);
        }
    }

    static /* synthetic */ void syncIfRequired$default(Didomi didomi, FragmentActivity fragmentActivity, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            fragmentActivity = null;
        }
        didomi.syncIfRequired(fragmentActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateSelectedLanguage$lambda$13(Didomi this$0, String languageCode) {
        LanguageUpdateFailedEvent languageUpdateFailedEvent;
        Event languageUpdatedEvent;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(languageCode, "$languageCode");
        int i2 = a.a[this$0.getLanguagesHelper().g(languageCode).ordinal()];
        if (i2 == 1) {
            languageUpdateFailedEvent = new LanguageUpdateFailedEvent("Language code " + languageCode + " is not valid");
        } else {
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                this$0.getPurposesTranslationsRepository$android_release().d();
                this$0.getVendorRepository$android_release().z();
                languageUpdatedEvent = new LanguageUpdatedEvent(this$0.getLanguagesHelper().f());
                this$0.getEventsRepository$android_release().c(languageUpdatedEvent);
            }
            languageUpdateFailedEvent = new LanguageUpdateFailedEvent("Language code " + languageCode + " is not enabled in the SDK");
        }
        languageUpdatedEvent = languageUpdateFailedEvent;
        this$0.getEventsRepository$android_release().c(languageUpdatedEvent);
    }

    public final void addEventListener(EventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getEventsRepository$android_release().a(listener);
    }

    public final void addEventListener(DidomiEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getEventsRepository$android_release().a(listener);
    }

    public final void addVendorStatusListener(final String id, final DidomiVendorStatusListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.isReady) {
            registerVendorStatusListener(id, listener);
        } else {
            onReady(new DidomiCallable() { // from class: io.didomi.sdk.z9
                @Override // io.didomi.drawable.functionalinterfaces.DidomiCallable
                public final void call() throws DidomiNotReadyException {
                    Didomi.addVendorStatusListener$lambda$9(this.a, id, listener);
                }
            });
        }
    }

    public final void clearUser() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        getOrganizationUserRepository$android_release().a();
        getUserRepository$android_release().e();
        getConsentRepository$android_release().a((Date) null, (String) null);
        getConsentRepository$android_release().a((Set<String>) ((255 & 1) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 2) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 4) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 8) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 16) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 32) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 64) != 0 ? SetsKt__SetsKt.emptySet() : null), (Set<String>) ((255 & 128) != 0 ? SetsKt__SetsKt.emptySet() : null), true, "external", getEventsRepository$android_release(), getApiEventsRepository(), getUserStatusRepository$android_release());
    }

    public final void forceShowNotice(FragmentActivity fragmentActivity) throws DidomiNotReadyException {
        readyOrThrow$android_release();
        getNavigationManager$android_release().a(fragmentActivity);
    }

    public final io.didomi.drawable.apiEvents.b getApiEventsRepository() {
        io.didomi.drawable.apiEvents.b bVar = this.apiEventsRepository;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("apiEventsRepository");
        return null;
    }

    public final J0 getComponent$android_release() {
        if (!this.isReady) {
            Log.e$default("Injection Component requested while Didomi is not initialized!", null, 2, null);
        }
        return this.componentProvider.a();
    }

    public final H getConfigurationRepository() {
        H h2 = this.configurationRepository;
        if (h2 != null) {
            return h2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("configurationRepository");
        return null;
    }

    public final J getConnectivityHelper$android_release() {
        J j = this.connectivityHelper;
        if (j != null) {
            return j;
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectivityHelper");
        return null;
    }

    public final V getConsentRepository$android_release() {
        V v = this.consentRepository;
        if (v != null) {
            return v;
        }
        Intrinsics.throwUninitializedPropertyAccessException("consentRepository");
        return null;
    }

    public final Z getContextHelper$android_release() {
        Z z = this.contextHelper;
        if (z != null) {
            return z;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contextHelper");
        return null;
    }

    public final CurrentUserStatus getCurrentUserStatus() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getUserStatusRepository$android_release().b();
    }

    public final E0 getDeviceType() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getContextHelper$android_release().g() ? E0.ConnectedTv : E0.Mobile;
    }

    public final M2 getEventsRepository$android_release() {
        return (M2) this.eventsRepository$delegate.getValue();
    }

    public final boolean getHasAnyStatus() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().h();
    }

    public final Z2 getHttpRequestHelper$android_release() {
        Z2 z2 = this.httpRequestHelper;
        if (z2 != null) {
            return z2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("httpRequestHelper");
        return null;
    }

    public final InterfaceC1780h3 getIabStorageRepository$android_release() {
        InterfaceC1780h3 interfaceC1780h3 = this.iabStorageRepository;
        if (interfaceC1780h3 != null) {
            return interfaceC1780h3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("iabStorageRepository");
        return null;
    }

    public final int getIabVendorCount() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getVendorRepository$android_release().b();
    }

    public final String getJavaScriptForWebView() throws DidomiNotReadyException {
        return getJavaScriptForWebView$default(this, null, 1, null);
    }

    public final String getJavaScriptForWebView(String str) throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return m9.a.a(getConsentRepository$android_release().b(), getContextHelper$android_release().b(), getUserRepository$android_release().getUserId(), str);
    }

    public final C1920v3 getLanguagesHelper() {
        C1920v3 c1920v3 = this.languagesHelper;
        if (c1920v3 != null) {
            return c1920v3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languagesHelper");
        return null;
    }

    public final I3 getNavigationManager$android_release() {
        I3 i3 = this.navigationManager;
        if (i3 != null) {
            return i3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navigationManager");
        return null;
    }

    public final int getNonIabVendorCount() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getVendorRepository$android_release().c();
    }

    public final P3 getOrganizationUserRepository$android_release() {
        return (P3) this.organizationUserRepository$delegate.getValue();
    }

    public final Purpose getPurpose(String purposeId) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        readyOrThrow$android_release();
        InternalPurpose internalPurposeC = getVendorRepository$android_release().c(purposeId);
        if (internalPurposeC != null) {
            return C1860p3.b(internalPurposeC);
        }
        return null;
    }

    public final Z4 getPurposesTranslationsRepository$android_release() {
        Z4 z4 = this.purposesTranslationsRepository;
        if (z4 != null) {
            return z4;
        }
        Intrinsics.throwUninitializedPropertyAccessException("purposesTranslationsRepository");
        return null;
    }

    public final String getQueryStringForWebView() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return m9.a.a(getConsentRepository$android_release().b(), getContextHelper$android_release().b(), getUserRepository$android_release().getUserId());
    }

    public final C1822l5 getRemoteFilesHelper$android_release() {
        C1822l5 c1822l5 = this.remoteFilesHelper;
        if (c1822l5 != null) {
            return c1822l5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("remoteFilesHelper");
        return null;
    }

    public final Set<String> getRequiredPurposeIds() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getVendorRepository$android_release().i();
    }

    public final Set<Purpose> getRequiredPurposes() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        Set<InternalPurpose> setK = getVendorRepository$android_release().k();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setK, 10));
        Iterator<T> it = setK.iterator();
        while (it.hasNext()) {
            arrayList.add(C1860p3.b((InternalPurpose) it.next()));
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<String> getRequiredVendorIds() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getVendorRepository$android_release().s();
    }

    public final Set<Vendor> getRequiredVendors() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        Set<InternalVendor> setQ = getVendorRepository$android_release().q();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setQ, 10));
        Iterator<T> it = setQ.iterator();
        while (it.hasNext()) {
            arrayList.add(C1870q3.j((InternalVendor) it.next()));
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final C1892s5 getResourcesHelper$android_release() {
        C1892s5 c1892s5 = this.resourcesHelper;
        if (c1892s5 != null) {
            return c1892s5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("resourcesHelper");
        return null;
    }

    public final SharedPreferences getSharedPreferences$android_release() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sharedPreferences");
        return null;
    }

    public final C1733c6 getSyncRepository$android_release() {
        C1733c6 c1733c6 = this.syncRepository;
        if (c1733c6 != null) {
            return c1733c6;
        }
        Intrinsics.throwUninitializedPropertyAccessException("syncRepository");
        return null;
    }

    public final Map<String, String> getText(String key) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(key, "key");
        readyOrThrow$android_release();
        return getLanguagesHelper().c(key);
    }

    public final int getTotalVendorCount() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getVendorRepository$android_release().v();
    }

    public final String getTranslatedText(String key) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(key, "key");
        readyOrThrow$android_release();
        return C1920v3.a(getLanguagesHelper(), key, (W5) null, (Map) null, 6, (Object) null);
    }

    public final D8 getUiProvider$android_release() {
        D8 d8 = this.uiProvider;
        if (d8 != null) {
            return d8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiProvider");
        return null;
    }

    public final UIStateRepository getUiStateRepository$android_release() {
        UIStateRepository uIStateRepository = this.uiStateRepository;
        if (uIStateRepository != null) {
            return uIStateRepository;
        }
        Intrinsics.throwUninitializedPropertyAccessException("uiStateRepository");
        return null;
    }

    public final F8 getUserAgentRepository$android_release() {
        return (F8) this.userAgentRepository$delegate.getValue();
    }

    public final G8 getUserChoicesInfoProvider$android_release() {
        G8 g8 = this.userChoicesInfoProvider;
        if (g8 != null) {
            return g8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userChoicesInfoProvider");
        return null;
    }

    public final M8 getUserRepository$android_release() {
        M8 m8 = this.userRepository;
        if (m8 != null) {
            return m8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userRepository");
        return null;
    }

    public final UserStatus getUserStatus() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getUserStatusRepository$android_release().d();
    }

    public final P8 getUserStatusRepository$android_release() {
        P8 p8 = this.userStatusRepository;
        if (p8 != null) {
            return p8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userStatusRepository");
        return null;
    }

    public final Vendor getVendor(String vendorId) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        readyOrThrow$android_release();
        InternalVendor internalVendorG = getVendorRepository$android_release().g(vendorId);
        if (internalVendorG != null) {
            return C1870q3.j(internalVendorG);
        }
        return null;
    }

    public final V8 getVendorRepository$android_release() {
        V8 v8 = this.vendorRepository;
        if (v8 != null) {
            return v8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vendorRepository");
        return null;
    }

    public final void hideNotice() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        getNavigationManager$android_release().a();
    }

    public final void hidePreferences() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        getNavigationManager$android_release().b();
    }

    public final void initialize(final Application application, final DidomiInitializeParameters parameters) throws Exception {
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        synchronized (this.initializationEventLock) {
            if (this.isInitializeInProgress) {
                Log.w$default("Not initializing the SDK as an initialization is already in progress.", null, 2, null);
                return;
            }
            if (ready$android_release() && (isNoticeVisible() || isPreferencesVisible())) {
                Log.w$default("Not initializing the SDK as UI is already displayed. Close all UI elements before initializing again.", null, 2, null);
                return;
            }
            this.isError = false;
            this.isInitializeInProgress = true;
            v vVar = v.a;
            B8.a(B8.a, null, 1, null);
            this.isInitialized = true;
            M0.a.a(new Runnable() { // from class: io.didomi.sdk.y9
                @Override // java.lang.Runnable
                public final void run() {
                    Didomi.initialize$lambda$5(parameters, this, application);
                }
            });
        }
    }

    public final boolean isConsentRequired() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return I.b(getConfigurationRepository());
    }

    public final boolean isError() {
        return this.isError;
    }

    public final boolean isInitializeInProgress$android_release() {
        return this.isInitializeInProgress;
    }

    public final boolean isInitialized() {
        return this.isInitialized;
    }

    public final boolean isNoticeVisible() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getUiProvider$android_release().b();
    }

    public final boolean isPreferencesVisible() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getUiProvider$android_release().c();
    }

    public final boolean isReady() {
        return this.isReady;
    }

    public final boolean isUserConsentStatusPartial() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().i();
    }

    public final boolean isUserLegitimateInterestStatusPartial() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().j();
    }

    public final boolean isUserStatusPartial() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().k();
    }

    public final void onError(DidomiCallable callback) throws Exception {
        boolean z;
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.initializationEventLock) {
            if (this.isInitializeInProgress || !this.isError) {
                getEventsRepository$android_release().a(new d(callback));
                z = false;
            } else {
                z = true;
                v vVar = v.a;
            }
        }
        if (z) {
            callback.call();
        }
    }

    public final void onReady(DidomiCallable callback) throws Exception {
        boolean z;
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.initializationEventLock) {
            if (this.isInitializeInProgress || !ready$android_release()) {
                getEventsRepository$android_release().a(new e(callback));
                z = false;
            } else {
                z = true;
                v vVar = v.a;
            }
        }
        if (z) {
            callback.call();
        }
    }

    public final CurrentUserStatusTransaction openCurrentUserStatusTransaction() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return new CurrentUserStatusTransaction(getUserStatusRepository$android_release(), getVendorRepository$android_release());
    }

    public final CurrentUserStatusTransaction openCurrentUserTransaction() throws DidomiNotReadyException {
        return openCurrentUserStatusTransaction();
    }

    public final boolean ready$android_release() {
        return this.isReady;
    }

    public final void readyOrThrow$android_release() throws DidomiNotReadyException {
        if (!ready$android_release()) {
            throw new DidomiNotReadyException();
        }
    }

    public final void removeEventListener(DidomiEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getEventsRepository$android_release().b(listener);
    }

    public final void removeVendorStatusListener(final String id) throws Exception {
        Intrinsics.checkNotNullParameter(id, "id");
        if (this.isReady) {
            getEventsRepository$android_release().a(id);
        } else {
            onReady(new DidomiCallable() { // from class: io.didomi.sdk.ba
                @Override // io.didomi.drawable.functionalinterfaces.DidomiCallable
                public final void call() {
                    Didomi.removeVendorStatusListener$lambda$10(this.a, id);
                }
            });
        }
    }

    public final void reset() {
        synchronized (this.initializationEventLock) {
            if (this.isReady) {
                resetComponents();
            } else {
                this.requestResetAtInitialize = true;
            }
            v vVar = v.a;
        }
    }

    public final void setApiEventsRepository(io.didomi.drawable.apiEvents.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.apiEventsRepository = bVar;
    }

    public final void setConfigurationRepository(H h2) {
        Intrinsics.checkNotNullParameter(h2, "<set-?>");
        this.configurationRepository = h2;
    }

    public final void setConnectivityHelper$android_release(J j) {
        Intrinsics.checkNotNullParameter(j, "<set-?>");
        this.connectivityHelper = j;
    }

    public final void setConsentRepository$android_release(V v) {
        Intrinsics.checkNotNullParameter(v, "<set-?>");
        this.consentRepository = v;
    }

    public final void setContextHelper$android_release(Z z) {
        Intrinsics.checkNotNullParameter(z, "<set-?>");
        this.contextHelper = z;
    }

    public final boolean setCurrentUserStatus(CurrentUserStatus currentUserStatus) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(currentUserStatus, "currentUserStatus");
        readyOrThrow$android_release();
        return getUserStatusRepository$android_release().a(currentUserStatus);
    }

    public final void setHttpRequestHelper$android_release(Z2 z2) {
        Intrinsics.checkNotNullParameter(z2, "<set-?>");
        this.httpRequestHelper = z2;
    }

    public final void setIabStorageRepository$android_release(InterfaceC1780h3 interfaceC1780h3) {
        Intrinsics.checkNotNullParameter(interfaceC1780h3, "<set-?>");
        this.iabStorageRepository = interfaceC1780h3;
    }

    public final void setInitializeInProgress$android_release(boolean z) {
        this.isInitializeInProgress = z;
    }

    public final void setLanguagesHelper(C1920v3 c1920v3) {
        Intrinsics.checkNotNullParameter(c1920v3, "<set-?>");
        this.languagesHelper = c1920v3;
    }

    public final void setLocalProperty(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        getLocalPropertiesRepository().a(key, obj);
    }

    public final void setLogLevel(int i2) {
        Log.setLevel(i2);
    }

    public final void setNavigationManager$android_release(I3 i3) {
        Intrinsics.checkNotNullParameter(i3, "<set-?>");
        this.navigationManager = i3;
    }

    public final void setPurposesTranslationsRepository$android_release(Z4 z4) {
        Intrinsics.checkNotNullParameter(z4, "<set-?>");
        this.purposesTranslationsRepository = z4;
    }

    public final void setRemoteFilesHelper$android_release(C1822l5 c1822l5) {
        Intrinsics.checkNotNullParameter(c1822l5, "<set-?>");
        this.remoteFilesHelper = c1822l5;
    }

    public final void setResourcesHelper$android_release(C1892s5 c1892s5) {
        Intrinsics.checkNotNullParameter(c1892s5, "<set-?>");
        this.resourcesHelper = c1892s5;
    }

    public final void setSharedPreferences$android_release(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<set-?>");
        this.sharedPreferences = sharedPreferences;
    }

    public final void setSyncRepository$android_release(C1733c6 c1733c6) {
        Intrinsics.checkNotNullParameter(c1733c6, "<set-?>");
        this.syncRepository = c1733c6;
    }

    public final void setUiProvider$android_release(D8 d8) {
        Intrinsics.checkNotNullParameter(d8, "<set-?>");
        this.uiProvider = d8;
    }

    public final void setUiStateRepository$android_release(UIStateRepository uIStateRepository) {
        Intrinsics.checkNotNullParameter(uIStateRepository, "<set-?>");
        this.uiStateRepository = uIStateRepository;
    }

    public final void setUser(UserAuthParams userAuthParams) {
        Intrinsics.checkNotNullParameter(userAuthParams, "userAuthParams");
        setUser$default(this, userAuthParams, null, null, null, 14, null);
    }

    public final void setUser(UserAuthParams userAuthParams, List<? extends UserAuthParams> list) {
        Intrinsics.checkNotNullParameter(userAuthParams, "userAuthParams");
        setUser$default(this, userAuthParams, list, null, null, 12, null);
    }

    public final void setUser(UserAuthParams userAuthParams, List<? extends UserAuthParams> list, FragmentActivity fragmentActivity) {
        Intrinsics.checkNotNullParameter(userAuthParams, "userAuthParams");
        setUser$default(this, userAuthParams, list, fragmentActivity, null, 8, null);
    }

    public final void setUser(UserAuthParams userAuthParams, List<? extends UserAuthParams> list, FragmentActivity fragmentActivity, Boolean bool) {
        Intrinsics.checkNotNullParameter(userAuthParams, "userAuthParams");
        getOrganizationUserRepository$android_release().a(userAuthParams);
        getOrganizationUserRepository$android_release().a(list);
        if (bool != null) {
            getOrganizationUserRepository$android_release().a(bool.booleanValue());
        }
        syncIfRequired(fragmentActivity);
    }

    public final void setUser(String organizationUserId) {
        Intrinsics.checkNotNullParameter(organizationUserId, "organizationUserId");
        setUser$default(this, organizationUserId, null, null, 6, null);
    }

    public final void setUser(String organizationUserId, FragmentActivity fragmentActivity) {
        Intrinsics.checkNotNullParameter(organizationUserId, "organizationUserId");
        setUser$default(this, organizationUserId, fragmentActivity, null, 4, null);
    }

    public final void setUser(String organizationUserId, FragmentActivity fragmentActivity, Boolean bool) {
        Intrinsics.checkNotNullParameter(organizationUserId, "organizationUserId");
        getOrganizationUserRepository$android_release().a(new UserAuthWithoutParams(organizationUserId));
        getOrganizationUserRepository$android_release().a((List<? extends UserAuth>) null);
        if (bool != null) {
            getOrganizationUserRepository$android_release().a(bool.booleanValue());
        }
        syncIfRequired(fragmentActivity);
    }

    public final void setUserAgent(String name, String version) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        getUserAgentRepository$android_release().a(name, version);
    }

    public final boolean setUserAgreeToAll() throws DidomiNotReadyException {
        return setUserStatus(true, true, true, true);
    }

    public final void setUserChoicesInfoProvider$android_release(G8 g8) {
        Intrinsics.checkNotNullParameter(g8, "<set-?>");
        this.userChoicesInfoProvider = g8;
    }

    public final boolean setUserDisagreeToAll() throws DidomiNotReadyException {
        return setUserStatus(false, false, false, false);
    }

    public final void setUserRepository$android_release(M8 m8) {
        Intrinsics.checkNotNullParameter(m8, "<set-?>");
        this.userRepository = m8;
    }

    public final boolean setUserStatus(Set<String> set, Set<String> set2, Set<String> set3, Set<String> set4, Set<String> set5, Set<String> set6, Set<String> set7, Set<String> set8) throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().a(new UserStatusParameters(set, set2, set3, set4, set5, set6, set7, set8, true, "external"), getApiEventsRepository(), getEventsRepository$android_release(), getUserStatusRepository$android_release());
    }

    public final boolean setUserStatus(boolean z, boolean z2, boolean z3, boolean z4) throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().a(z, z2, z3, z4, "external", getApiEventsRepository(), getEventsRepository$android_release(), getUserStatusRepository$android_release());
    }

    public final void setUserStatusRepository$android_release(P8 p8) {
        Intrinsics.checkNotNullParameter(p8, "<set-?>");
        this.userStatusRepository = p8;
    }

    public final void setVendorRepository$android_release(V8 v8) {
        Intrinsics.checkNotNullParameter(v8, "<set-?>");
        this.vendorRepository = v8;
    }

    public final void setupUI(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            Log.w$default("Activity passed to setupUI is null", null, 2, null);
            return;
        }
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            Log.e$default("IMPORTANT: you are calling the setupUI method from a thread other than the main thread. This method must be called from the main thread to prevent unexpected issues.", null, 2, null);
        }
        this.lifecycleHandler.b(fragmentActivity);
    }

    public final boolean shouldConsentBeCollected() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().q();
    }

    public final boolean shouldUserStatusBeCollected() throws DidomiNotReadyException {
        readyOrThrow$android_release();
        return getConsentRepository$android_release().q();
    }

    public final void showNotice(FragmentActivity fragmentActivity) throws DidomiNotReadyException {
        readyOrThrow$android_release();
        getNavigationManager$android_release().b(fragmentActivity);
    }

    public final void showPreferences(FragmentActivity fragmentActivity) throws DidomiNotReadyException {
        showPreferences$default(this, fragmentActivity, null, 2, null);
    }

    public final void showPreferences(FragmentActivity fragmentActivity, String str) throws DidomiNotReadyException {
        readyOrThrow$android_release();
        if (getConfigurationRepository().e() == Regulation.NONE) {
            Log.w$default("User consent is not required, preferences will not be shown", null, 2, null);
        } else {
            getNavigationManager$android_release().a(fragmentActivity, Intrinsics.areEqual(str, VIEW_VENDORS) ? Y5.Vendors : Intrinsics.areEqual(str, VIEW_SENSITIVE_PERSONAL_INFORMATION) ? Y5.SensitivePersonalInfo : Y5.None);
        }
    }

    public final boolean sync$android_release(boolean z, FragmentActivity fragmentActivity) {
        if (!getSyncRepository$android_release().a()) {
            return false;
        }
        boolean zHandleOrganizationUserChange = handleOrganizationUserChange();
        SyncParams syncParams = new SyncParams(getConfigurationRepository().b().h(), zHandleOrganizationUserChange ? null : getConsentRepository$android_release().b().getLastSyncDate(), getContextHelper$android_release().a(), getUserAgentRepository$android_release().a(), getConfigurationRepository().a(), getContextHelper$android_release().f(), getContextHelper$android_release().d(), getContextHelper$android_release().b(), getUserRepository$android_release().getUserId(), getConsentRepository$android_release().b().getCreated(), getConsentRepository$android_release().b().getUpdated(), new ConsentChoices(Y.h(getConsentRepository$android_release().b()), Y.d(getConsentRepository$android_release().b())), new ConsentChoices(Y.f(getConsentRepository$android_release().b()), Y.b(getConsentRepository$android_release().b())), new ConsentChoices(Y.i(getConsentRepository$android_release().b()), Y.e(getConsentRepository$android_release().b())), new ConsentChoices(Y.g(getConsentRepository$android_release().b()), Y.c(getConsentRepository$android_release().b())), getConsentRepository$android_release().a(), getConsentRepository$android_release().g());
        if (fragmentActivity != null) {
            setupUIOnSyncDone(fragmentActivity);
        }
        if (z) {
            getSyncRepository$android_release().a(syncParams);
        } else {
            getSyncRepository$android_release().b(syncParams);
        }
        return true;
    }

    public final void updateSelectedLanguage(final String languageCode) throws DidomiNotReadyException {
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        readyOrThrow$android_release();
        M0.a.a(new Runnable() { // from class: io.didomi.sdk.aa
            @Override // java.lang.Runnable
            public final void run() {
                Didomi.updateSelectedLanguage$lambda$13(this.a, languageCode);
            }
        });
    }
}
