###### Class com.ironsource.e9.b (com.ironsource.e9$b)
.class public final Lcom/ironsource/e9$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/e9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000cR\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0012\u001a\u00020\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/ironsource/e9$b;",
        "",
        "Lcom/ironsource/e9;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/ironsource/e9;",
        "instance",
        "Lcom/ironsource/l5;",
        "d",
        "()Lcom/ironsource/l5;",
        "getProvider$annotations",
        "()V",
        "provider",
        "Lcom/ironsource/k5;",
        "a",
        "()Lcom/ironsource/k5;",
        "getEditor$annotations",
        "editor",
        "<init>",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/e9$b;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    return-void
.end method

.method private final c()Lcom/ironsource/e9;
    .registers 2

    invoke-static {}, Lcom/ironsource/e9;->e()Lkotlin/i;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/e9;

    return-object v0
.end method

.method public static synthetic e()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/k5;
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/e9$b;->c()Lcom/ironsource/e9;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/ironsource/l5;
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/e9$b;->c()Lcom/ironsource/e9;

    move-result-object v0

    return-object v0
.end method
