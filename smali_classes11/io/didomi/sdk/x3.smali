###### Class io.didomi.drawable.C1940x3 (io.didomi.sdk.x3)
.class public final Lio/didomi/sdk/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/x3$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0007B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ/\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/didomi/sdk/x3;",
        "Landroid/text/Html$TagHandler;",
        "<init>",
        "()V",
        "",
        "tag",
        "",
        "a",
        "(Ljava/lang/String;)V",
        "Landroid/text/Editable;",
        "output",
        "(Landroid/text/Editable;)V",
        "b",
        "d",
        "c",
        "",
        "opening",
        "Lorg/xml/sax/XMLReader;",
        "xmlReader",
        "handleTag",
        "(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V",
        "Ljava/util/Vector;",
        "Ljava/util/Vector;",
        "parents",
        "",
        "counters",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final c:Lio/didomi/sdk/x3$a;


# instance fields
.field private final a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/x3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/x3$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/x3;->c:Lio/didomi/sdk/x3$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/x3;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    return-void
.end method

.method private final a(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/x3;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-string v0, "\n"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_e
    iget-object p1, p0, Lio/didomi/sdk/x3;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object p1, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/x3;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private final b(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/x3;->a:Ljava/util/Vector;

    invoke-static {v0}, Lkotlin/collections/p;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ul-tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lio/didomi/sdk/x3;->d(Landroid/text/Editable;)V

    goto :goto_23

    :cond_12
    iget-object v0, p0, Lio/didomi/sdk/x3;->a:Ljava/util/Vector;

    invoke-static {v0}, Lkotlin/collections/p;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ol-tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0, p1}, Lio/didomi/sdk/x3;->c(Landroid/text/Editable;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private final c(Landroid/text/Editable;)V
    .registers 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "\n"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_b
    iget-object v0, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_13
    if-ge v2, v0, :cond_1d

    const-string v3, "\t"

    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    iget-object v0, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object p1, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private final d(Landroid/text/Editable;)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "\n"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_b
    iget-object v0, p0, Lio/didomi/sdk/x3;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_12
    if-ge v1, v0, :cond_1c

    const-string v2, "\t"

    invoke-interface {p1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    const-string v0, "\u2022 "

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .registers 6

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xmlReader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "ul-tag"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2e

    const-string p4, "ol-tag"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_20

    goto :goto_2e

    :cond_20
    const-string p4, "li-tag"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    if-eqz p1, :cond_37

    invoke-direct {p0, p3}, Lio/didomi/sdk/x3;->b(Landroid/text/Editable;)V

    goto :goto_37

    :cond_2e
    :goto_2e
    if-eqz p1, :cond_34

    invoke-direct {p0, p2}, Lio/didomi/sdk/x3;->a(Ljava/lang/String;)V

    goto :goto_37

    :cond_34
    invoke-direct {p0, p3}, Lio/didomi/sdk/x3;->a(Landroid/text/Editable;)V

    :cond_37
    :goto_37
    return-void
.end method
