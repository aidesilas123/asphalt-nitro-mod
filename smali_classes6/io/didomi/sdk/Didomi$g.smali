###### Class io.didomi.sdk.Didomi.g (io.didomi.sdk.Didomi$g)
.class public final Lio/didomi/sdk/Didomi$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;->preparePageViewEvent(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "io/didomi/sdk/Didomi$g",
        "Lio/didomi/sdk/m$a;",
        "",
        "a",
        "()V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Didomi;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Didomi;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Didomi$g;->a:Lio/didomi/sdk/Didomi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi$g;->a:Lio/didomi/sdk/Didomi;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getApiEventsRepository()Lio/didomi/sdk/apiEvents/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->f()V

    return-void
.end method
