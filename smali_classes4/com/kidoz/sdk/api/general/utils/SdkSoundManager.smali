###### Class com.kidoz.sdk.api.general.utils.SdkSoundManager (com.kidoz.sdk.api.general.utils.SdkSoundManager)
.class public Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;
.super Ljava/lang/Object;
.source "SdkSoundManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SdkSoundManager"

.field private static sLoadedSounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initSoundPool()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_39

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x3

    if-lt v0, v1, :cond_31

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    goto :goto_39

    :cond_31
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    :cond_39
    :goto_39
    return-void
.end method

.method private static playLoadedSound(Landroid/content/Context;I)V
    .registers 11

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->initSoundPool()V

    if-eqz p0, :cond_25

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    div-float v5, v1, p0

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p1

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_25
    return-void
.end method

.method public static playSound(Landroid/content/Context;I)V
    .registers 6

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->initSoundPool()V

    const-string v0, ""

    if-eqz p0, :cond_43

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    if-eqz v1, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->playLoadedSound(Landroid/content/Context;I)V

    goto :goto_63

    :cond_43
    sget-object v1, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    if-eqz v1, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->playLoadedSound(Landroid/content/Context;I)V

    :cond_63
    :goto_63
    return-void
.end method

.method public static playSound(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->TAG:Ljava/lang/String;

    const-string v1, "*** playSound"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->initSoundPool()V

    if-eqz p0, :cond_87

    if-eqz p1, :cond_87

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_87

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    const-string v1, ", soundID = "

    const-string v2, "playSound: path = "

    if-eqz v0, :cond_52

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sget-object v3, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->playLoadedSound(Landroid/content/Context;I)V

    sget-object p0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :cond_52
    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    if-eqz v0, :cond_87

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->playLoadedSound(Landroid/content/Context;I)V

    sget-object p0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public static preloadSound(Landroid/content/Context;I)V
    .registers 5

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->initSoundPool()V

    if-eqz p0, :cond_3f

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    if-eqz v0, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3f

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    return-void
.end method

.method public static preloadSound(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->TAG:Ljava/lang/String;

    const-string v1, "*** preloadSound"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->initSoundPool()V

    if-eqz p0, :cond_48

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    if-eqz v0, :cond_48

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadSound: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", soundID = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public static releaseManager()V
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sSoundPool:Landroid/media/SoundPool;

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkSoundManager;->sLoadedSounds:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_11
    return-void
.end method
