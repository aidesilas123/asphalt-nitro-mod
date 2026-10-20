###### Class com.json.o5 (com.ironsource.o5)
.class public final Lcom/ironsource/o5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/o5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/ironsource/o5;",
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
.field public static final a:Lcom/ironsource/o5$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/o5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/o5$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/ironsource/o5;->a:Lcom/ironsource/o5$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/ironsource/p5;
    .registers 1

    sget-object v0, Lcom/ironsource/o5;->a:Lcom/ironsource/o5$a;

    invoke-virtual {v0}, Lcom/ironsource/o5$a;->a()Lcom/ironsource/p5;

    move-result-object v0

    return-object v0
.end method
