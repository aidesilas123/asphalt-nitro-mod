###### Class com.tapjoy.internal.d6 (com.tapjoy.internal.d6)
.class public abstract synthetic Lcom/tapjoy/internal/d6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/tapjoy/TJStatus;->values()[Lcom/tapjoy/TJStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tapjoy/internal/d6;->a:[I

    :try_start_9
    sget-object v1, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/tapjoy/internal/d6;->a:[I

    sget-object v1, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
