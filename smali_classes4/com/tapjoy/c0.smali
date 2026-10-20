###### Class com.tapjoy.c0 (com.tapjoy.c0)
.class public Lcom/tapjoy/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const-string v0, "TJC_OPTION_USER_ID"

    const-string v1, "TJC_OPTION_ENABLE_LOGGING"

    const-string v2, "TJC_OPTION_SERVICE_URL"

    const-string v3, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    const-string v4, "TJC_OPTION_STORE_NAME"

    const-string v5, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    const-string v6, "TJC_OPTION_DISABLE_ANDROID_ID_AS_ANALYTICS_ID"

    const-string v7, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/c0;->a:[Ljava/lang/String;

    const-string v0, "gfan"

    const-string v1, "skt"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/c0;->b:[Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/internal/h3;

    invoke-direct {v0}, Lcom/tapjoy/internal/h3;-><init>()V

    sput-object v0, Lcom/tapjoy/c0;->c:Ljava/util/Hashtable;

    return-void
.end method
