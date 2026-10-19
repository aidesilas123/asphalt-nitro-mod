###### Class com.json.g1 (com.ironsource.g1)
.class public Lcom/ironsource/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/ironsource/g1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ironsource/g1;
    .registers 1

    sget-object v0, Lcom/ironsource/g1;->a:Lcom/ironsource/g1;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ironsource/g1;

    invoke-direct {v0}, Lcom/ironsource/g1;-><init>()V

    :cond_9
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .registers 5

    invoke-static {}, Lcom/ironsource/g8;->e()Lcom/ironsource/g8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g8;->b()Lcom/ironsource/h6$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/g1$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/ironsource/u7;->b(Landroid/content/Context;)Lcom/ironsource/u7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/u7;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/e;->j()Lcom/ironsource/sdk/controller/k;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/controller/t;

    if-eqz p1, :cond_2a

    const-string v0, "back"

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/t;->k(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2c

    :cond_2a
    const/4 p1, 0x1

    return p1

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

###### Class com.ironsource.g1.a (com.ironsource.g1$a)
.class synthetic Lcom/ironsource/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ironsource/h6$a;->values()[Lcom/ironsource/h6$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/g1$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/ironsource/h6$a;->a:Lcom/ironsource/h6$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ironsource/g1$a;->a:[I

    sget-object v1, Lcom/ironsource/h6$a;->b:Lcom/ironsource/h6$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ironsource/g1$a;->a:[I

    sget-object v1, Lcom/ironsource/h6$a;->c:Lcom/ironsource/h6$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
