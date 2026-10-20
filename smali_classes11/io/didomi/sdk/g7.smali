###### Class io.didomi.drawable.C1774g7 (io.didomi.sdk.g7)
.class public final Lio/didomi/sdk/g7;
.super Lio/didomi/sdk/i7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/g7;",
        "Lio/didomi/sdk/i7;",
        "Lio/didomi/sdk/G1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/G1;)V",
        "Lio/didomi/sdk/x6$e;",
        "title",
        "",
        "a",
        "(Lio/didomi/sdk/x6$e;)V",
        "Lio/didomi/sdk/G1;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/G1;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/G1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/i7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    iput-object p1, p0, Lio/didomi/sdk/g7;->a:Lio/didomi/sdk/G1;

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/x6$e;)V
    .registers 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/g7;->a:Lio/didomi/sdk/G1;

    iget-object v0, v0, Lio/didomi/sdk/G1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/didomi/sdk/x6$e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
