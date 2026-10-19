###### Class io.didomi.drawable.C1806k.i.b (io.didomi.sdk.k$i$b)
.class public final Lio/didomi/sdk/k$i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/k$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/k$i$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0011B\u001b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0008\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0012\u001a\u0004\u0008\u0011\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/didomi/sdk/k$i$b;",
        "",
        "Lio/didomi/sdk/k$i$b$a;",
        "regular",
        "highlight",
        "<init>",
        "(Lio/didomi/sdk/k$i$b$a;Lio/didomi/sdk/k$i$b$a;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lio/didomi/sdk/k$i$b$a;",
        "b",
        "()Lio/didomi/sdk/k$i$b$a;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/k$i$b$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "regularButtons"
    .end annotation
.end field

.field private final b:Lio/didomi/sdk/k$i$b$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "highlightButtons"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/didomi/sdk/k$i$b;-><init>(Lio/didomi/sdk/k$i$b$a;Lio/didomi/sdk/k$i$b$a;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/k$i$b$a;Lio/didomi/sdk/k$i$b$a;)V
    .registers 4

    const-string v0, "regular"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "highlight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/k$i$b;->a:Lio/didomi/sdk/k$i$b$a;

    iput-object p2, p0, Lio/didomi/sdk/k$i$b;->b:Lio/didomi/sdk/k$i$b$a;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/k$i$b$a;Lio/didomi/sdk/k$i$b$a;ILkotlin/jvm/internal/n;)V
    .registers 14

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_13

    new-instance p1, Lio/didomi/sdk/k$i$b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/k$i$b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/n;)V

    :cond_13
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_26

    new-instance p2, Lio/didomi/sdk/k$i$b$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/k$i$b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/n;)V

    :cond_26
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/k$i$b;-><init>(Lio/didomi/sdk/k$i$b$a;Lio/didomi/sdk/k$i$b$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/k$i$b$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$i$b;->b:Lio/didomi/sdk/k$i$b$a;

    return-object v0
.end method

.method public final b()Lio/didomi/sdk/k$i$b$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$i$b;->a:Lio/didomi/sdk/k$i$b$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/k$i$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/k$i$b;

    iget-object v1, p0, Lio/didomi/sdk/k$i$b;->a:Lio/didomi/sdk/k$i$b$a;

    iget-object v3, p1, Lio/didomi/sdk/k$i$b;->a:Lio/didomi/sdk/k$i$b$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/k$i$b;->b:Lio/didomi/sdk/k$i$b$a;

    iget-object p1, p1, Lio/didomi/sdk/k$i$b;->b:Lio/didomi/sdk/k$i$b$a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/k$i$b;->a:Lio/didomi/sdk/k$i$b$a;

    invoke-virtual {v0}, Lio/didomi/sdk/k$i$b$a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k$i$b;->b:Lio/didomi/sdk/k$i$b$a;

    invoke-virtual {v1}, Lio/didomi/sdk/k$i$b$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ButtonsThemeConfig(regular="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$i$b;->a:Lio/didomi/sdk/k$i$b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$i$b;->b:Lio/didomi/sdk/k$i$b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
