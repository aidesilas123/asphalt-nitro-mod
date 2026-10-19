###### Class com.json.adapters.custom.kidoz.KidozSDKInfo (com.ironsource.adapters.custom.kidoz.KidozSDKInfo)
.class public Lcom/ironsource/adapters/custom/kidoz/KidozSDKInfo;
.super Ljava/lang/Object;
.source "KidozSDKInfo.java"


# static fields
.field public static final ADAPTER_VERSION_NAME:Ljava/lang/String; = "1.2.0"

.field public static final SDK_VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozSDKInfo;->SDK_VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
