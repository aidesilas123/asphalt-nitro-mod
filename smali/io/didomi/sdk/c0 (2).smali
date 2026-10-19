###### Class io.didomi.drawable.C1727c0 (io.didomi.sdk.c0)
.class public final Lio/didomi/sdk/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/b0;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/b0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/c0;->a:Lio/didomi/sdk/b0;

    return-void
.end method

.method public static a(Lio/didomi/sdk/b0;)Lio/didomi/sdk/c0;
    .registers 2

    new-instance v0, Lio/didomi/sdk/c0;

    invoke-direct {v0, p0}, Lio/didomi/sdk/c0;-><init>(Lio/didomi/sdk/b0;)V

    return-object v0
.end method

.method public static b(Lio/didomi/sdk/b0;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lio/didomi/sdk/b0;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/c0;->a:Lio/didomi/sdk/b0;

    invoke-static {v0}, Lio/didomi/sdk/c0;->b(Lio/didomi/sdk/b0;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/c0;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
