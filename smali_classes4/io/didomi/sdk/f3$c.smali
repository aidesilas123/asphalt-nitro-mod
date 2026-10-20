###### Class io.didomi.drawable.C1760f3.c (io.didomi.sdk.f3$c)
.class final Lio/didomi/sdk/f3$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/f3;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ljava/util/Date;",
        "a",
        "()Ljava/util/Date;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/f3;


# direct methods
.method constructor <init>(Lio/didomi/sdk/f3;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/f3$c;->a:Lio/didomi/sdk/f3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/f3$c;->a:Lio/didomi/sdk/f3;

    invoke-static {v0}, Lio/didomi/sdk/e3;->a(Lio/didomi/sdk/d3;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/f3$c;->a()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
