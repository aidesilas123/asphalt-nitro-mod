###### Class com.json.o (com.ironsource.o)
.class public final Lcom/ironsource/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/ironsource/o;",
        "",
        "<init>",
        "()V",
        "a",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/o$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/o$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/ironsource/o;->a:Lcom/ironsource/o$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/o;->a:Lcom/ironsource/o$a;

    invoke-virtual {v0}, Lcom/ironsource/o$a;->a()I

    move-result v0

    return v0
.end method
