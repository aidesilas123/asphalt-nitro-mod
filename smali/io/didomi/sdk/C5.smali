###### Class io.didomi.drawable.C5 (io.didomi.sdk.C5)
.class public final Lio/didomi/sdk/C5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/B5;",
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
            "Lio/didomi/sdk/v3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;Le/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/C5;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/C5;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/C5;->c:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)Lio/didomi/sdk/B5;
    .registers 4

    new-instance v0, Lio/didomi/sdk/B5;

    invoke-direct {v0, p0, p1, p2}, Lio/didomi/sdk/B5;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)V

    return-object v0
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/C5;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;)",
            "Lio/didomi/sdk/C5;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/C5;

    invoke-direct {v0, p0, p1, p2}, Lio/didomi/sdk/C5;-><init>(Le/a/a;Le/a/a;Le/a/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/B5;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/C5;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/H;

    iget-object v1, p0, Lio/didomi/sdk/C5;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/v3;

    iget-object v2, p0, Lio/didomi/sdk/C5;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/C3;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/C5;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)Lio/didomi/sdk/B5;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/C5;->a()Lio/didomi/sdk/B5;

    move-result-object v0

    return-object v0
.end method
