###### Class io.didomi.sdk.Y8.e (io.didomi.sdk.Y8$e)
.class public final Lio/didomi/sdk/Y8$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/mobile/DidomiToggle$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Y8;->onBindViewHolder(Lio/didomi/sdk/g9;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/Y8$e",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$a;",
        "Lio/didomi/sdk/view/mobile/DidomiToggle;",
        "toggle",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/f9;

.field final synthetic b:Lio/didomi/sdk/U8$c;

.field final synthetic c:Lio/didomi/sdk/Y8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/f9;Lio/didomi/sdk/U8$c;Lio/didomi/sdk/Y8;)V
    .registers 4

    iput-object p1, p0, Lio/didomi/sdk/Y8$e;->a:Lio/didomi/sdk/f9;

    iput-object p2, p0, Lio/didomi/sdk/Y8$e;->b:Lio/didomi/sdk/U8$c;

    iput-object p3, p0, Lio/didomi/sdk/Y8$e;->c:Lio/didomi/sdk/Y8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "toggle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/Y8$e;->a:Lio/didomi/sdk/f9;

    iget-object v0, p0, Lio/didomi/sdk/Y8$e;->b:Lio/didomi/sdk/U8$c;

    invoke-virtual {p1, v0, p2}, Lio/didomi/sdk/f9;->a(Lio/didomi/sdk/U8$c;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p1, p0, Lio/didomi/sdk/Y8$e;->c:Lio/didomi/sdk/Y8;

    invoke-static {p1}, Lio/didomi/sdk/Y8;->a(Lio/didomi/sdk/Y8;)Lio/didomi/sdk/Y8$a;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/Y8$e;->b:Lio/didomi/sdk/U8$c;

    invoke-virtual {v0}, Lio/didomi/sdk/U8$c;->j()Lio/didomi/sdk/models/InternalVendor;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lio/didomi/sdk/Y8$a;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method
