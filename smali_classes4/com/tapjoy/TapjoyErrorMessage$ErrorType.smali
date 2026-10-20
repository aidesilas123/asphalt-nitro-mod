###### Class com.tapjoy.TapjoyErrorMessage.ErrorType (com.tapjoy.TapjoyErrorMessage$ErrorType)
.class public final enum Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TapjoyErrorMessage$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum e:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final synthetic f:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const/4 v1, 0x0

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const/4 v3, 0x1

    const-string v4, "SDK_ERROR"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const/4 v5, 0x2

    const-string v6, "SERVER_ERROR"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v6, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const/4 v7, 0x3

    const-string v8, "INTEGRATION_ERROR"

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v8, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const/4 v9, 0x4

    const-string v10, "NETWORK_ERROR"

    invoke-direct {v8, v9, v10}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->e:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->f:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .registers 2

    const-class v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->f:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object v0
.end method
