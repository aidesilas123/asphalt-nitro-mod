###### Class io.didomi.sdk.U.j (io.didomi.sdk.U$j)
.class final Lio/didomi/sdk/U$j;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/U;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/M2;Lio/didomi/sdk/V8;Lio/didomi/sdk/s5;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;Lio/didomi/sdk/P8;Lio/didomi/sdk/P3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/L3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/L3;",
        "a",
        "()Lio/didomi/sdk/L3;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/U;


# direct methods
.method constructor <init>(Lio/didomi/sdk/U;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/U$j;->a:Lio/didomi/sdk/U;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/L3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/U$j;->a:Lio/didomi/sdk/U;

    invoke-virtual {v0}, Lio/didomi/sdk/U;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lio/didomi/sdk/t;->a:Lio/didomi/sdk/t;

    goto :goto_d

    :cond_b
    sget-object v0, Lio/didomi/sdk/O2;->a:Lio/didomi/sdk/O2;

    :goto_d
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/U$j;->a()Lio/didomi/sdk/L3;

    move-result-object v0

    return-object v0
.end method
