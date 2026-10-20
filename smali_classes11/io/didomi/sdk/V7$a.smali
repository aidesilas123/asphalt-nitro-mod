###### Class io.didomi.drawable.V7.ArrowLink (io.didomi.sdk.V7$a)
.class public final Lio/didomi/sdk/V7$a;
.super Lio/didomi/sdk/V7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V7$a$a;,
        Lio/didomi/sdk/V7$a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00162\u00020\u0001:\u0002\u0014\u0018B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\"\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001c\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lio/didomi/sdk/V7$a;",
        "Lio/didomi/sdk/V7;",
        "",
        "text",
        "Lio/didomi/sdk/V7$a$a;",
        "actionType",
        "",
        "typeId",
        "<init>",
        "(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;I)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/CharSequence;",
        "d",
        "()Ljava/lang/CharSequence;",
        "b",
        "Lio/didomi/sdk/V7$a$a;",
        "c",
        "()Lio/didomi/sdk/V7$a$a;",
        "I",
        "setTypeId",
        "(I)V",
        "",
        "()J",
        "id",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lio/didomi/sdk/V7$a$b;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Lio/didomi/sdk/V7$a$a;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/V7$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/V7$a$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/V7$a;->d:Lio/didomi/sdk/V7$a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;I)V
    .registers 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/didomi/sdk/V7;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    iput p3, p0, Lio/didomi/sdk/V7$a;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;IILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x2

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/V7$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;I)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/V7$a;->c:I

    return v0
.end method

.method public final c()Lio/didomi/sdk/V7$a$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/V7$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/V7$a;

    iget-object v1, p0, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    iget-object v3, p1, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lio/didomi/sdk/V7$a;->c:I

    iget p1, p1, Lio/didomi/sdk/V7$a;->c:I

    if-eq v1, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/sdk/V7$a;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrowLink(text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/V7$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/V7$a;->b:Lio/didomi/sdk/V7$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/V7$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
