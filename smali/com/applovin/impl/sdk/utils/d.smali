###### Class com.applovin.impl.sdk.utils.d (com.applovin.impl.sdk.utils.d)
.class public Lcom/applovin/impl/sdk/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/d$a;
    }
.end annotation


# static fields
.field private static aVj:Z = true

.field private static final aVk:Ljava/lang/Object;

.field private static final aVl:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private static aVm:Z

.field private static aVn:Lcom/applovin/impl/sdk/utils/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/d;->aVk:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/d;->aVl:Ljava/util/Collection;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/sdk/utils/d;->aVm:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/impl/sdk/utils/d;->aVn:Lcom/applovin/impl/sdk/utils/d$a;

    return-void
.end method

.method public static KP()Z
    .registers 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/u;->dE(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static U(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->V(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object p0

    return-object p0
.end method

.method private static V(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/applovin/impl/sdk/utils/u;->LE()V

    sget-object v0, Lcom/applovin/impl/sdk/utils/d;->aVk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget-boolean v1, Lcom/applovin/impl/sdk/utils/d;->aVm:Z

    if-eqz v1, :cond_e

    sget-object p0, Lcom/applovin/impl/sdk/utils/d;->aVn:Lcom/applovin/impl/sdk/utils/d$a;

    monitor-exit v0

    return-object p0

    :cond_e
    sget-object v1, Lcom/applovin/impl/sdk/utils/d;->aVl:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_6d

    if-eqz v2, :cond_49

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->W(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object p0

    monitor-enter v0

    :try_start_25
    sput-boolean v4, Lcom/applovin/impl/sdk/utils/d;->aVm:Z

    sput-object p0, Lcom/applovin/impl/sdk/utils/d;->aVn:Lcom/applovin/impl/sdk/utils/d$a;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_46

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_36

    :catchall_46
    move-exception p0

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0

    :cond_49
    const-wide/16 v0, 0x3c

    :try_start_4b
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_63

    const-string p0, "DataCollector"

    const-string v0, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception p0

    const-string v0, "DataCollector"

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    sget-object p0, Lcom/applovin/impl/sdk/utils/d;->aVk:Ljava/lang/Object;

    monitor-enter p0

    :try_start_66
    sget-object v0, Lcom/applovin/impl/sdk/utils/d;->aVn:Lcom/applovin/impl/sdk/utils/d$a;

    monitor-exit p0

    return-object v0

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6a

    throw v0

    :catchall_6d
    move-exception p0

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method private static W(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .registers 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->collectGoogleAdvertisingInfo(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/d;->collectFireOSAdvertisingInfo(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_11

    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    :cond_11
    return-object v0
.end method

.method private static collectFireOSAdvertisingInfo(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "DataCollector"

    sget-boolean v1, Lcom/applovin/impl/sdk/utils/d;->aVj:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    const-string v3, "advertising_id"

    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/utils/d$a;->dx(Ljava/lang/String;)V

    const-string v3, "limit_ad_tracking"

    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/utils/d$a;->bi(Z)V

    if-eqz p0, :cond_30

    sget-object p0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVs:Lcom/applovin/impl/sdk/utils/d$a$a;

    goto :goto_32

    :cond_30
    sget-object p0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVt:Lcom/applovin/impl/sdk/utils/d$a$a;

    :goto_32
    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/utils/d$a;->a(Lcom/applovin/impl/sdk/utils/d$a$a;)V
    :try_end_35
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_35} :catch_3d
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    return-object v1

    :catchall_36
    move-exception p0

    const-string v1, "Unable to collect Fire OS IDFA"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :catch_3d
    move-exception p0

    const-string v1, "Unable to determine if Fire OS limited ad tracking is turned on"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    sput-boolean v2, Lcom/applovin/impl/sdk/utils/d;->aVj:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static collectGoogleAdvertisingInfo(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/applovin/impl/sdk/utils/u;->LE()V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/d;->KP()Z

    move-result v0

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    const-string v2, "DataCollector"

    if-eqz v0, :cond_3a

    :try_start_d
    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/utils/d$a;->bi(Z)V

    if-eqz v4, :cond_22

    sget-object v4, Lcom/applovin/impl/sdk/utils/d$a$a;->aVs:Lcom/applovin/impl/sdk/utils/d$a$a;

    goto :goto_24

    :cond_22
    sget-object v4, Lcom/applovin/impl/sdk/utils/d$a$a;->aVt:Lcom/applovin/impl/sdk/utils/d$a$a;

    :goto_24
    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/utils/d$a;->a(Lcom/applovin/impl/sdk/utils/d$a$a;)V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/utils/d$a;->dx(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2f

    return-object v0

    :catchall_2f
    move-exception v0

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isFireOS(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_43

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_3a
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isFireOS(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_43

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    const/4 p0, 0x0

    return-object p0
.end method

###### Class com.applovin.impl.sdk.utils.d.a (com.applovin.impl.sdk.utils.d$a)
.class public Lcom/applovin/impl/sdk/utils/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/d$a$a;
    }
.end annotation


# instance fields
.field private aVo:Z

.field private aVp:Ljava/lang/String;

.field private aVq:Lcom/applovin/impl/sdk/utils/d$a$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVp:Ljava/lang/String;

    sget-object v0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVr:Lcom/applovin/impl/sdk/utils/d$a$a;

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVq:Lcom/applovin/impl/sdk/utils/d$a$a;

    return-void
.end method


# virtual methods
.method public KQ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVo:Z

    return v0
.end method

.method public KR()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVp:Ljava/lang/String;

    return-object v0
.end method

.method public KS()Lcom/applovin/impl/sdk/utils/d$a$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVq:Lcom/applovin/impl/sdk/utils/d$a$a;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/utils/d$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVq:Lcom/applovin/impl/sdk/utils/d$a$a;

    return-void
.end method

.method public bi(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVo:Z

    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/applovin/impl/sdk/utils/d$a;

    return p1
.end method

.method public dx(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/d$a;->aVp:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/sdk/utils/d$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/utils/d$a;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KQ()Z

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/d$a;->KQ()Z

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/d$a;->KR()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2b

    if-eqz v3, :cond_32

    goto :goto_31

    :cond_2b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :goto_31
    return v2

    :cond_32
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KS()Lcom/applovin/impl/sdk/utils/d$a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/d$a;->KS()Lcom/applovin/impl/sdk/utils/d$a$a;

    move-result-object p1

    if-nez v1, :cond_3f

    if-eqz p1, :cond_46

    goto :goto_45

    :cond_3f
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    :goto_45
    return v2

    :cond_46
    return v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KQ()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x4f

    goto :goto_b

    :cond_9
    const/16 v0, 0x61

    :goto_b
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KR()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_1b

    const/16 v2, 0x2b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KS()Lcom/applovin/impl/sdk/utils/d$a$a;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2d
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingInfoCollector.AdvertisingIdInformation(adTrackingLimited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", advertisingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dntCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/d$a;->KS()Lcom/applovin/impl/sdk/utils/d$a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.impl.sdk.utils.d.a.EnumC0083a (com.applovin.impl.sdk.utils.d$a$a)
.class public final enum Lcom/applovin/impl/sdk/utils/d$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/utils/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/sdk/utils/d$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aVr:Lcom/applovin/impl/sdk/utils/d$a$a;

.field public static final enum aVs:Lcom/applovin/impl/sdk/utils/d$a$a;

.field public static final enum aVt:Lcom/applovin/impl/sdk/utils/d$a$a;

.field private static final synthetic aVv:[Lcom/applovin/impl/sdk/utils/d$a$a;


# instance fields
.field private final aVu:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a$a;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    const-string v3, "dnt_not_set"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/d$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVr:Lcom/applovin/impl/sdk/utils/d$a$a;

    new-instance v1, Lcom/applovin/impl/sdk/utils/d$a$a;

    const-string v3, "ON"

    const/4 v4, 0x1

    const-string v5, "dnt_on"

    invoke-direct {v1, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/d$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/applovin/impl/sdk/utils/d$a$a;->aVs:Lcom/applovin/impl/sdk/utils/d$a$a;

    new-instance v3, Lcom/applovin/impl/sdk/utils/d$a$a;

    const-string v5, "OFF"

    const/4 v6, 0x2

    const-string v7, "dnt_off"

    invoke-direct {v3, v5, v6, v7}, Lcom/applovin/impl/sdk/utils/d$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/applovin/impl/sdk/utils/d$a$a;->aVt:Lcom/applovin/impl/sdk/utils/d$a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/applovin/impl/sdk/utils/d$a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/applovin/impl/sdk/utils/d$a$a;->aVv:[Lcom/applovin/impl/sdk/utils/d$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVu:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/d$a$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/sdk/utils/d$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/utils/d$a$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/utils/d$a$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVv:[Lcom/applovin/impl/sdk/utils/d$a$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/utils/d$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/utils/d$a$a;

    return-object v0
.end method


# virtual methods
.method public KT()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/d$a$a;->aVu:Ljava/lang/String;

    return-object v0
.end method
