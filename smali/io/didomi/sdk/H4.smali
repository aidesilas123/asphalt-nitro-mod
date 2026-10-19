###### Class io.didomi.drawable.H4 (io.didomi.sdk.H4)
.class public final Lio/didomi/sdk/H4;
.super Lio/didomi/sdk/U4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/H4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/H4;",
        "Lio/didomi/sdk/U4;",
        "Lio/didomi/sdk/t1;",
        "binding",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/t1;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/A4;",
        "data",
        "",
        "a",
        "(Lio/didomi/sdk/A4;)V",
        "c",
        "Lio/didomi/sdk/t1;",
        "d",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lio/didomi/sdk/H4$a;


# instance fields
.field private final c:Lio/didomi/sdk/t1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/H4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/H4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/H4;->d:Lio/didomi/sdk/H4$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/t1;Lio/didomi/sdk/z8;)V
    .registers 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/U4;-><init>(Landroidx/viewbinding/ViewBinding;Lio/didomi/sdk/z8;)V

    iput-object p1, p0, Lio/didomi/sdk/H4;->c:Lio/didomi/sdk/t1;

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/A4;)V
    .registers 14

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/didomi/sdk/U4;->a(Lio/didomi/sdk/w4;)V

    iget-object v0, p0, Lio/didomi/sdk/H4;->c:Lio/didomi/sdk/t1;

    invoke-virtual {v0}, Lio/didomi/sdk/t1;->a()Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    const-string v1, "bind$lambda$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/didomi/sdk/A4;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lio/didomi/sdk/A4;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/e4;->i()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/q;->b(Landroid/widget/Button;Lio/didomi/sdk/w8;)V

    invoke-interface {p1}, Lio/didomi/sdk/A4;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class io.didomi.drawable.H4.Companion (io.didomi.sdk.H4$a)
.class public final Lio/didomi/sdk/H4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/H4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/H4$a;",
        "",
        "<init>",
        "()V",
        "",
        "ID",
        "I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/H4$a;-><init>()V

    return-void
.end method
