###### Class com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper (com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper)
.class public Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;
.super Ljava/lang/Object;
.source "UniquePlacementHelper.java"


# instance fields
.field private mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

.field private mExternalRewardedListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;

.field private mUniqueInterstitialListener:Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;

.field private mUniquePlacementId:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniquePlacementId:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalRewardedListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniqueInterstitialListener:Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;

    return-void
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniquePlacementId:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getAdditionalParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniquePlacementId:Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_97

    :cond_18
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniqueInterstitialListener:Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    goto :goto_31

    :cond_2c
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniqueInterstitialListener:Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;->onInterstitialClose()V

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_98

    goto :goto_7d

    :pswitch_45
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onClosed()V

    goto :goto_7d

    :pswitch_4b
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onAdImpression()V

    goto :goto_7d

    :pswitch_51
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getError()Lcom/kidoz/sdk/api/general/KidozError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    goto :goto_7d

    :pswitch_5b
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onAdShown()V

    goto :goto_7d

    :pswitch_61
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v2, Lcom/kidoz/sdk/api/general/KidozError$Type;->noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v1, v2}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    goto :goto_7d

    :pswitch_6e
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getError()Lcom/kidoz/sdk/api/general/KidozError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    goto :goto_7d

    :pswitch_78
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;->onAdLoaded()V

    :cond_7d
    :goto_7d
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalRewardedListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;

    if-eqz v0, :cond_97

    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_92

    goto :goto_97

    :cond_92
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalRewardedListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;->onRewardReceived()V

    :cond_97
    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_78
        :pswitch_6e
        :pswitch_61
        :pswitch_5b
        :pswitch_51
        :pswitch_4b
        :pswitch_45
    .end packed-switch
.end method

.method public setExternalInterstitialListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalInterstitialListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;

    return-void
.end method

.method public setExternalRewardedListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mExternalRewardedListener:Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;

    return-void
.end method

.method public setInternalInterstitialListener(Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;->mUniqueInterstitialListener:Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;

    return-void
.end method

###### Class com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper.AnonymousClass1 (com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper$1)
.class synthetic Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;
.super Ljava/lang/Object;
.source "UniquePlacementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->values()[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INTERSTITIAL_AD_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->NO_OFFERS:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_IMPRESSION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/kidoz/sdk/api/general/UniquePlacement/UniquePlacementHelper$1;->$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method
