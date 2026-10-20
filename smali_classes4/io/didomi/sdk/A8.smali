###### Class io.didomi.drawable.A8 (io.didomi.sdk.A8)
.class public final Lio/didomi/sdk/A8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/z8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/s5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/s5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/A8;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/A8;->b:Le/a/a;

    return-void
.end method

.method public static a(Le/a/a;Le/a/a;)Lio/didomi/sdk/A8;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/s5;",
            ">;)",
            "Lio/didomi/sdk/A8;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/A8;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/A8;-><init>(Le/a/a;Le/a/a;)V

    return-object v0
.end method

.method public static a(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)Lio/didomi/sdk/z8;
    .registers 3

    new-instance v0, Lio/didomi/sdk/z8;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/z8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/z8;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/A8;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/H;

    iget-object v1, p0, Lio/didomi/sdk/A8;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/s5;

    invoke-static {v0, v1}, Lio/didomi/sdk/A8;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)Lio/didomi/sdk/z8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/A8;->a()Lio/didomi/sdk/z8;

    move-result-object v0

    return-object v0
.end method
