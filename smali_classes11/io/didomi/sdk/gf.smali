###### Class io.didomi.drawable.gf (io.didomi.sdk.gf)
.class public final synthetic Lio/didomi/sdk/gf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/p;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/gf;->a:Lkotlin/jvm/b/p;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/gf;->a:Lkotlin/jvm/b/p;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/q3;->k(Lkotlin/jvm/b/p;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
