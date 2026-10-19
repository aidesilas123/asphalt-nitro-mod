###### Class com.gameloft.adsmanager.IronSource (com.gameloft.adsmanager.IronSource)
.class public Lcom/gameloft/adsmanager/IronSource;
.super Lcom/gameloft/adsmanager/BaseAdsProvider;
.source "IronSource.java"


# instance fields
.field final EXPECTED_ADQUALITY_PARAMS_SIZE:I

.field final EXPECTED_CONFIG_SIZE:I

.field bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

.field bannerSdkLocation:Ljava/lang/String;

.field volatile enableIronSourceTestMode:Z

.field incentivizedAvailability:Z

.field incentivizedObjectCreated:Z

.field incentivizedSdkLocation:Ljava/lang/String;

.field interstitialLoading:Z

.field interstitialObjectCreated:Z

.field interstitialSdkLocation:Ljava/lang/String;

.field onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

.field onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

.field volatile wasIronSourceSDKSuccessfullyInitialized:Z


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;-><init>(J)V

    const/16 p1, 0xf

    iput p1, p0, Lcom/gameloft/adsmanager/IronSource;->EXPECTED_CONFIG_SIZE:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/gameloft/adsmanager/IronSource;->EXPECTED_ADQUALITY_PARAMS_SIZE:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/IronSource;->enableIronSourceTestMode:Z

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/IronSource;->wasIronSourceSDKSuccessfullyInitialized:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->bannerSdkLocation:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    iput-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    iput-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedSdkLocation:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedAvailability:Z

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    return-void
.end method


# virtual methods
.method public Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    move-object/from16 v3, p7

    const-string v4, ")"

    const-string v5, "false"

    sget-object v6, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    const-string v7, "Configure"

    const-string v8, "IronSource.java"

    if-eqz v6, :cond_482

    sget-object v6, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    if-nez v6, :cond_1a

    goto/16 :goto_482

    :cond_1a
    if-eqz v0, :cond_479

    array-length v6, v0

    const/16 v9, 0xf

    if-eq v6, v9, :cond_23

    goto/16 :goto_479

    :cond_23
    if-eqz v2, :cond_470

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2d

    goto/16 :goto_470

    :cond_2d
    if-eqz v3, :cond_467

    array-length v6, v3

    const/4 v9, 0x4

    if-eq v6, v9, :cond_35

    goto/16 :goto_467

    :cond_35
    const/4 v6, 0x0

    aget-object v10, v3, v6

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    const-string v0, "IronSource sdk cannot be initialized because the AdQuality sdk key is missing"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_49
    aget v10, v0, v6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_50

    const/4 v10, 0x1

    goto :goto_51

    :cond_50
    const/4 v10, 0x0

    :goto_51
    aget v12, v0, v11

    if-ne v12, v11, :cond_57

    const/4 v12, 0x1

    goto :goto_58

    :cond_57
    const/4 v12, 0x0

    :goto_58
    const/4 v13, 0x2

    aget v14, v0, v13

    if-ne v14, v11, :cond_5f

    const/4 v14, 0x1

    goto :goto_60

    :cond_5f
    const/4 v14, 0x0

    :goto_60
    const/4 v15, 0x3

    aget v13, v0, v15

    if-ne v13, v11, :cond_67

    const/4 v13, 0x1

    goto :goto_68

    :cond_67
    const/4 v13, 0x0

    :goto_68
    aget v9, v0, v9

    if-ne v9, v11, :cond_6e

    const/4 v9, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v9, 0x0

    :goto_6f
    const/16 v16, 0x5

    aget v15, v0, v16

    if-ne v15, v11, :cond_77

    const/4 v15, 0x1

    goto :goto_78

    :cond_77
    const/4 v15, 0x0

    :goto_78
    const/16 v16, 0x6

    aget v6, v0, v16

    if-ne v6, v11, :cond_80

    const/4 v6, 0x1

    goto :goto_81

    :cond_80
    const/4 v6, 0x0

    :goto_81
    const/16 v16, 0x7

    aget v3, v0, v16

    if-ne v3, v11, :cond_89

    const/4 v3, 0x1

    goto :goto_8a

    :cond_89
    const/4 v3, 0x0

    :goto_8a
    const/16 v16, 0x8

    aget v2, v0, v16

    if-ne v2, v11, :cond_92

    const/4 v2, 0x1

    goto :goto_93

    :cond_92
    const/4 v2, 0x0

    :goto_93
    const/16 v16, 0x9

    move-object/from16 v17, v4

    aget v4, v0, v16

    if-ne v4, v11, :cond_9d

    const/4 v4, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v4, 0x0

    :goto_9e
    const/16 v16, 0xa

    move/from16 v18, v10

    aget v10, v0, v16

    if-ne v10, v11, :cond_a8

    const/4 v10, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v10, 0x0

    :goto_a9
    const/16 v16, 0xb

    move/from16 v19, v4

    aget v4, v0, v16

    if-ne v4, v11, :cond_b3

    const/4 v4, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v4, 0x0

    :goto_b4
    const/16 v16, 0xc

    move/from16 v20, v2

    aget v2, v0, v16

    if-ne v2, v11, :cond_be

    const/4 v2, 0x1

    goto :goto_bf

    :cond_be
    const/4 v2, 0x0

    :goto_bf
    iput-boolean v2, v1, Lcom/gameloft/adsmanager/IronSource;->enableIronSourceTestMode:Z

    const/16 v2, 0xd

    aget v2, v0, v2

    if-ne v2, v11, :cond_c9

    const/4 v2, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v2, 0x0

    :goto_ca
    const/16 v16, 0xe

    aget v0, v0, v16

    if-ne v0, v11, :cond_d3

    const/16 v16, 0x1

    goto :goto_d5

    :cond_d3
    const/16 v16, 0x0

    :goto_d5
    new-instance v0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    move-object/from16 v11, p3

    invoke-direct {v0, v11}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;-><init>([Ljava/lang/String;)V

    new-instance v11, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    move/from16 v22, v3

    move-object/from16 v3, p5

    invoke-direct {v11, v3}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;-><init>([Ljava/lang/String;)V

    new-instance v3, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    move/from16 v23, v6

    move-object/from16 v6, p4

    invoke-direct {v3, v6}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PopValidPlacement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/adsmanager/IronSource;->bannerSdkLocation:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PopValidPlacement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PopValidPlacement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/adsmanager/IronSource;->incentivizedSdkLocation:Ljava/lang/String;

    if-eqz v2, :cond_17a

    :try_start_102
    const-string v0, "ADMOB TEST MODE ENABLED!"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_107} :catch_175

    :try_start_107
    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.RequestConfiguration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "com.google.android.gms.ads.RequestConfiguration$Builder"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v3, "setTestDeviceIds"
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_123} :catch_165

    move/from16 v24, v15

    const/4 v1, 0x1

    :try_start_126
    new-array v15, v1, [Ljava/lang/Class;

    const-class v21, Ljava/util/List;

    const/4 v1, 0x0

    aput-object v21, v15, v1

    invoke-virtual {v11, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->GetTestDevices()Ljava/util/List;

    move-result-object v11

    aput-object v11, v15, v1

    invoke-virtual {v3, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v11, "build"

    new-array v15, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "setRequestConfiguration"

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v2, v15, v1

    invoke-virtual {v0, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_162} :catch_163

    goto :goto_17c

    :catch_163
    move-exception v0

    goto :goto_168

    :catch_165
    move-exception v0

    move/from16 v24, v15

    :goto_168
    :try_start_168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17c

    :catch_175
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_45b

    :cond_17a
    move/from16 v24, v15

    :goto_17c
    if-eqz v14, :cond_23f

    const-string v0, "VERBOSE LOGS ENABLED!"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_183} :catch_175

    :try_start_183
    const-string v0, "com.bytedance.sdk.openadsdk.api.init.PAGConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "debugLog"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v11

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_1a1} :catch_1a2

    goto :goto_1af

    :catch_1a2
    move-exception v0

    :try_start_1a3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1af} :catch_175

    :goto_1af
    :try_start_1af
    const-string v0, "com.applovin.sdk.AppLovinSdk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    aput-object v2, v3, v11

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getSettings"

    new-array v3, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.applovin.sdk.AppLovinSdkSettings"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setVerboseLogging"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v11, v6, v15

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v15

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1f9} :catch_1fa

    goto :goto_207

    :catch_1fa
    move-exception v0

    :try_start_1fb
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_207} :catch_175

    :goto_207
    :try_start_207
    const-string v0, "com.fyber.inneractive.sdk.external.InneractiveAdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLogLevel"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_228} :catch_229

    goto :goto_236

    :catch_229
    move-exception v0

    :try_start_22a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_236
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->setAdaptersDebug(Z)V

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/content/Context;)V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_23f} :catch_175

    :cond_23f
    const-string v0, "is_deviceid_optout"

    const-string v1, "true"

    if-nez v16, :cond_25a

    :try_start_245
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v3, "optout"

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v2, "Using the optout segment"

    invoke-static {v8, v7, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25a
    if-eqz v12, :cond_26e

    new-instance v2, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v3, "fanrestricted"

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v2, "Using the fanrestricted segment"

    invoke-static {v8, v7, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26e
    if-eqz v13, :cond_282

    new-instance v2, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v3, "nosdk"

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v2, "Using the nosdk segment"

    invoke-static {v8, v7, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_282} :catch_175

    :cond_282
    const-string v2, "Vungle_coppa"

    const-string v3, "UnityAds_coppa"

    const-string v6, "is_child_directed"

    const-string v11, "AppLovin_AgeRestrictedUser"

    const-string v12, "MAX_AD_CONTENT_RATING_G"

    const-string v13, "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_G"

    const-string v15, "AdMob_TFUA"

    move/from16 v16, v14

    const-string v14, "AdMob_TFCD"

    move-object/from16 v25, v5

    const-string v5, "Pangle_COPPA"

    move-object/from16 p3, v2

    const-string v2, "AdMob_MaxContentRating"

    if-eqz v9, :cond_2e9

    :try_start_29e
    const-string v9, "User set as COPPA"

    invoke-static {v8, v7, v9}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "1"

    invoke-static {v5, v9}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_336

    const-string v5, "Will enable Coppa Regulation for this COPPA user"

    invoke-static {v8, v7, v5}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2be

    invoke-static {v8, v7, v13}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v12}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c8

    :cond_2be
    const-string v4, "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_PG"

    invoke-static {v8, v7, v4}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MAX_AD_CONTENT_RATING_PG"

    invoke-static {v2, v4}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c8
    invoke-static {v11, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HyprMX_ageRestricted"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DT_IsChild"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mintegral_COPPA"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_336

    :cond_2e9
    move-object/from16 v9, p3

    move-object/from16 p3, v9

    const-string v9, "User set as non COPPA"

    invoke-static {v8, v7, v9}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "0"

    invoke-static {v5, v9}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_336

    const-string v5, "Will enable Coppa Regulation for this non COPPA user"

    invoke-static {v8, v7, v5}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v25

    invoke-static {v14, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_30f

    invoke-static {v8, v7, v13}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v12}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_319

    :cond_30f
    const-string v9, "AdMob_MaxContentRating MAX_AD_CONTENT_RATING_MA"

    invoke-static {v8, v7, v9}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "MAX_AD_CONTENT_RATING_MA"

    invoke-static {v2, v9}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_319
    invoke-static {v11, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_321

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_321
    invoke-static {v6, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HyprMX_ageRestricted"

    invoke-static {v0, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mintegral_COPPA"

    invoke-static {v0, v5}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_336
    :goto_336
    if-eqz v24, :cond_34a

    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v1, "tag1"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, "Using tag1 segment"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34a
    if-eqz v23, :cond_35e

    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v1, "tag2"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, "Using tag2 segment"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35e
    if-eqz v22, :cond_372

    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v1, "tag3"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, "Using tag3 segment"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_372
    if-eqz v20, :cond_386

    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v1, "tag4"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, "Using tag4 segment"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_386
    if-eqz v19, :cond_39a

    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;-><init>()V

    const-string v1, "tag5"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->setSegmentName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    const-string v0, "Using tag5 segment"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39a
    new-instance v0, Lcom/gameloft/adsmanager/IronSource$1;
    :try_end_39c
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_39c} :catch_175

    move-object/from16 v1, p0

    :try_start_39e
    invoke-direct {v0, v1}, Lcom/gameloft/adsmanager/IronSource$1;-><init>(Lcom/gameloft/adsmanager/IronSource;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    new-instance v0, Lcom/gameloft/adsmanager/IronSource$2;

    invoke-direct {v0, v1}, Lcom/gameloft/adsmanager/IronSource$2;-><init>(Lcom/gameloft/adsmanager/IronSource;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setLevelPlayInterstitialListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    new-instance v0, Lcom/gameloft/adsmanager/IronSource$3;

    invoke-direct {v0, v1}, Lcom/gameloft/adsmanager/IronSource$3;-><init>(Lcom/gameloft/adsmanager/IronSource;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setLevelPlayRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;)V

    invoke-static/range {v18 .. v18}, Lcom/ironsource/mediationsdk/IronSource;->setConsent(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User consent set= ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationID=("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), CustomID=("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), User consent set= ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/gameloft/adsmanager/IronSource;->enableIronSourceTestMode:Z

    if-eqz v0, :cond_408

    const-string v0, "is_test_suite"

    const-string v2, "enable"

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_408
    invoke-static/range {p2 .. p2}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    new-instance v2, Lcom/gameloft/adsmanager/IronSource$4;

    invoke-direct {v2, v1}, Lcom/gameloft/adsmanager/IronSource$4;-><init>(Lcom/gameloft/adsmanager/IronSource;)V

    invoke-static {v0, v3, v2}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InitializationListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/gameloft/adsmanager/IronSourceInitializationHelperClass;

    invoke-direct {v2, v1}, Lcom/gameloft/adsmanager/IronSourceInitializationHelperClass;-><init>(Lcom/gameloft/adsmanager/IronSource;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x0

    aget-object v0, p7, v2

    const/4 v2, 0x1

    aget-object v2, p7, v2

    const/4 v3, 0x2

    aget-object v3, p7, v3

    const/4 v3, 0x3

    aget-object v3, p7, v3

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;-><init>()V

    new-instance v4, Lcom/gameloft/adsmanager/IronSource$5;

    invoke-direct {v4, v1, v11}, Lcom/gameloft/adsmanager/IronSource$5;-><init>(Lcom/gameloft/adsmanager/IronSource;Z)V

    invoke-virtual {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setUserId(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    if-eqz v16, :cond_44c

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->VERBOSE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    invoke-virtual {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setLogLevel(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    :cond_44c
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v3

    sget-object v4, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;)V
    :try_end_459
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_459} :catch_45a

    goto :goto_466

    :catch_45a
    move-exception v0

    :goto_45b
    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    const-string v0, "OnConfigurationFailed"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_466
    return-void

    :cond_467
    :goto_467
    const-string v0, "Invalid adQuality params"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_470
    :goto_470
    const-string v0, "Invalid appID"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_479
    :goto_479
    const-string v0, "Invalid configurationInfo"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void

    :cond_482
    :goto_482
    const-string v0, "MainActivity or ParentViewGroup is null"

    invoke-static {v8, v7, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationFailed()V

    return-void
.end method

.method public RequestBanner()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->bannerSdkLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    if-nez v0, :cond_16

    new-instance v0, Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource;->bannerSdkLocation:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/gameloft/adsmanager/IronSourceBanner;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public RequestIncentivized()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedSdkLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedAvailability:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    if-nez v0, :cond_27

    new-instance v0, Lcom/gameloft/adsmanager/IronSourceIncentivized;

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedSdkLocation:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/gameloft/adsmanager/IronSourceIncentivized;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    const-string v1, "IronSource.java"

    const-string v2, "Incentivized available"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedAvailable(Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public RequestInterstitial()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    const-string v0, "IronSource.java"

    const-string v1, "Load interstitial called"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public RequestOfferWall()V
    .registers 1

    return-void
.end method

.method public ResetIncentivized()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public ResetInterstitial()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

###### Class com.gameloft.adsmanager.IronSource.AnonymousClass1 (com.gameloft.adsmanager.IronSource$1)
.class Lcom/gameloft/adsmanager/IronSource$1;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$1;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAllData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$1;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnImpressionData(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

###### Class com.gameloft.adsmanager.IronSource.AnonymousClass2 (com.gameloft.adsmanager.IronSource$2)
.class Lcom/gameloft/adsmanager/IronSource$2;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClick(Ljava/lang/String;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_13
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    monitor-exit p1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter v0

    :try_start_3
    const-string v1, "IronSource.java"

    const-string v2, "Interstitial load error"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    const-string p1, "IronSource.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interstitial failed to load with errorCode = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and errorMessage = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {p1, v1, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v1, p1, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnDisplay(Ljava/lang/String;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onAdReady(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    const-string v0, "IronSource.java"

    const-string v1, "Interstitial loaded"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    iget-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    if-nez v1, :cond_24

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceInterstitial;

    iget-object v2, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/gameloft/adsmanager/IronSourceInterstitial;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialAvailable(Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V

    :cond_24
    monitor-exit p1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 9

    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p2

    :try_start_3
    const-string v0, "IronSource.java"

    const-string v1, "Interstitial show error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    const-string v2, "IronSource.java"

    const-string v3, "Interstitial failed to show with "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") and errorMessage = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v1, v1, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v1, :cond_4e

    iget-object v2, v1, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_4e
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iput-boolean v0, p1, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    monitor-exit p2

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p2
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public onAdShowSucceeded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSource.AnonymousClass3 (com.gameloft.adsmanager.IronSource$3)
.class Lcom/gameloft/adsmanager/IronSource$3;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->incentivizedAvailability:Z

    const-string v0, "IronSource.java"

    const-string v1, "Rewarded-onAdAvailable"

    const-string v2, "Incentivized availabillity changed to true"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onAdClicked(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object p2, p2, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz p2, :cond_e

    iget-object v0, p2, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnClick(Ljava/lang/String;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p2
.end method

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_13
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    monitor-exit p1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnDisplay(Ljava/lang/String;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 6

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object p2, p2, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz p2, :cond_11

    iget-object v0, p2, Lcom/gameloft/adsmanager/IronSourceIncentivized;->UUID:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnReward(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_11
    monitor-exit p1

    return-void

    :catchall_13
    move-exception p2

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p2
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 9

    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p2

    :try_start_3
    const-string v0, "IronSource.java"

    const-string v1, "Incentivized show error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "IronSource.java"

    const-string v3, "Incentivized failed to show with "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") and errorMessage = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz p1, :cond_4e

    iget-object v2, p1, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_4e
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iput-boolean v0, p1, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    monitor-exit p2

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p2
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public onAdUnavailable()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/adsmanager/IronSource;->incentivizedAvailability:Z

    const-string v1, "IronSource.java"

    const-string v2, "Rewarded-onAdUnavailable"

    const-string v3, "Incentivized availabillity changed to false"

    invoke-static {v1, v2, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

###### Class com.gameloft.adsmanager.IronSource.AnonymousClass4 (com.gameloft.adsmanager.IronSource$4)
.class Lcom/gameloft/adsmanager/IronSource$4;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->wasIronSourceSDKSuccessfullyInitialized:Z

    const-string v0, "IronSource.java"

    const-string v1, "onInitializationComplete"

    const-string v2, "OnConfigurationSucceeded"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnConfigurationSucceeded()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$4;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-boolean v0, v0, Lcom/gameloft/adsmanager/IronSource;->enableIronSourceTestMode:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->launchTestSuite(Landroid/content/Context;)V

    :cond_1e
    return-void
.end method

###### Class com.gameloft.adsmanager.IronSource.AnonymousClass5 (com.gameloft.adsmanager.IronSource$5)
.class Lcom/gameloft/adsmanager/IronSource$5;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;

.field final synthetic val$userConsent:Z


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$5;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iput-boolean p2, p0, Lcom/gameloft/adsmanager/IronSource$5;->val$userConsent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdQuality sdk failed to init with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and message "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IronSource.java"

    const-string v0, "adQualitySdkInitFailed"

    invoke-static {p2, v0, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adQualitySdkInitSuccess()V
    .registers 4

    const-string v0, "IronSource.java"

    const-string v1, "adQualitySdkInitSuccess"

    const-string v2, "AdQuality sdk successfully initialized"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gameloft/adsmanager/IronSource$5;->val$userConsent:Z

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->setUserConsent(Z)V

    return-void
.end method
