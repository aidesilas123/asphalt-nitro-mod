###### Class com.unity3d.services.UnityAdsConstants (com.unity3d.services.UnityAdsConstants)
.class public final Lcom/unity3d/services/UnityAdsConstants;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/UnityAdsConstants$ClientInfo;,
        Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;,
        Lcom/unity3d/services/UnityAdsConstants$Messages;,
        Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;,
        Lcom/unity3d/services/UnityAdsConstants$SharedFlow;,
        Lcom/unity3d/services/UnityAdsConstants$Timeout;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0006\u0003\u0004\u0005\u0006\u0007\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants;",
        "",
        "()V",
        "ClientInfo",
        "DefaultUrls",
        "Messages",
        "RequestPolicy",
        "SharedFlow",
        "Timeout",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.ClientInfo (com.unity3d.services.UnityAdsConstants$ClientInfo)
.class public final Lcom/unity3d/services/UnityAdsConstants$ClientInfo;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants$ClientInfo;",
        "",
        "()V",
        "SDK_VERSION",
        "",
        "SDK_VERSION_NAME",
        "",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

.field public static final SDK_VERSION:I = 0x1338

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "4.9.2"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.DefaultUrls (com.unity3d.services.UnityAdsConstants$DefaultUrls)
.class public final Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultUrls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;",
        "",
        "()V",
        "AD_PLAYER_QUERY_PARAMS",
        "",
        "GATEWAY_URL",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_PLAYER_QUERY_PARAMS:Ljava/lang/String; = "?platform=android&"

.field public static final GATEWAY_URL:Ljava/lang/String; = "http://gateway.unityads.unity3d.com/v1"

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.Messages (com.unity3d.services.UnityAdsConstants$Messages)
.class public final Lcom/unity3d/services/UnityAdsConstants$Messages;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants$Messages;",
        "",
        "()V",
        "MSG_INTERNAL_ERROR",
        "",
        "MSG_UNITY_BASE",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Messages;

.field public static final MSG_INTERNAL_ERROR:Ljava/lang/String; = "Internal error"

.field public static final MSG_UNITY_BASE:Ljava/lang/String; = "[Unity Ads] "


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Messages;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Messages;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Messages;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Messages;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.RequestPolicy (com.unity3d.services.UnityAdsConstants$RequestPolicy)
.class public final Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPolicy"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;",
        "",
        "()V",
        "CONNECT_TIMEOUT_MS",
        "",
        "READ_TIMEOUT_MS",
        "RETRY_JITTER_PCT",
        "",
        "RETRY_MAX_DURATION",
        "RETRY_WAIT_BASE",
        "SHOULD_STORE_LOCALLY",
        "",
        "WRITE_TIMEOUT_MS",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT_MS:I = 0x7530

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;

.field public static final READ_TIMEOUT_MS:I = 0x7530

.field public static final RETRY_JITTER_PCT:F = 0.1f

.field public static final RETRY_MAX_DURATION:I = 0x7530

.field public static final RETRY_WAIT_BASE:I = 0x7530

.field public static final SHOULD_STORE_LOCALLY:Z = false

.field public static final WRITE_TIMEOUT_MS:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.SharedFlow (com.unity3d.services.UnityAdsConstants$SharedFlow)
.class public final Lcom/unity3d/services/UnityAdsConstants$SharedFlow;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedFlow"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants$SharedFlow;",
        "",
        "()V",
        "EXTRA_CAPACITY",
        "",
        "REPLAY",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final EXTRA_CAPACITY:I = 0xa

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SharedFlow;

.field public static final REPLAY:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$SharedFlow;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$SharedFlow;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$SharedFlow;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SharedFlow;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.Timeout (com.unity3d.services.UnityAdsConstants$Timeout)
.class public final Lcom/unity3d/services/UnityAdsConstants$Timeout;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeout"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/unity3d/services/UnityAdsConstants$Timeout;",
        "",
        "()V",
        "INIT_TIMEOUT_MS",
        "",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INIT_TIMEOUT_MS:J = 0x2710L

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Timeout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Timeout;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Timeout;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Timeout;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Timeout;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
