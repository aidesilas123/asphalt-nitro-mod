###### Class com.tapjoy.d0 (com.tapjoy.d0)
.class public Lcom/tapjoy/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "com.tapjoy.TJAdUnitActivity"

    const-string v1, "com.tapjoy.TJContentActivity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/d0;->a:[Ljava/lang/String;

    const-string v0, "android.permission.INTERNET"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/d0;->b:[Ljava/lang/String;

    return-void
.end method
