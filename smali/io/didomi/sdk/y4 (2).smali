###### Class io.didomi.drawable.PurposeDisplayBulkAction (io.didomi.sdk.y4)
.class public final Lio/didomi/sdk/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/G4;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0016\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0011R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001a\u001a\u0004\u0008\u001d\u0010\u0011R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\"\u0010\u0008\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008\u0019\u0010%R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\'\u001a\u0004\u0008*\u0010)R\"\u0010\u000c\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u001e\u001a\u0004\u0008!\u0010 \"\u0004\u0008\u0019\u0010+R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u001a\u001a\u0004\u0008&\u0010\u0011R\u001a\u00100\u001a\u00020,8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010-\u001a\u0004\u0008.\u0010/R\u001a\u00104\u001a\u0002018\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u00102\u001a\u0004\u0008\u0019\u00103R\u001a\u00106\u001a\u00020\u00058\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u00085\u0010\u001e\u001a\u0004\u0008\u001c\u0010 \u00a8\u00067"
    }
    d2 = {
        "Lio/didomi/sdk/y4;",
        "Lio/didomi/sdk/G4;",
        "",
        "label",
        "accessibilityLabel",
        "",
        "shouldHideToggle",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "accessibilityStateActionDescription",
        "accessibilityStateDescription",
        "accessibilityAnnounceState",
        "accessibilityAnnounceStateLabel",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "c",
        "b",
        "f",
        "Z",
        "i",
        "()Z",
        "d",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "j",
        "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "e",
        "Ljava/util/List;",
        "g",
        "()Ljava/util/List;",
        "h",
        "(Z)V",
        "",
        "J",
        "getId",
        "()J",
        "id",
        "Lio/didomi/sdk/w4$a;",
        "Lio/didomi/sdk/w4$a;",
        "()Lio/didomi/sdk/w4$a;",
        "type",
        "k",
        "preventListAccessibilityAnnouncement",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:Lio/didomi/sdk/w4$a;

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateActionDescription"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateDescription"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/y4;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/y4;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lio/didomi/sdk/y4;->c:Z

    iput-object p4, p0, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    iput-object p5, p0, Lio/didomi/sdk/y4;->e:Ljava/util/List;

    iput-object p6, p0, Lio/didomi/sdk/y4;->f:Ljava/util/List;

    iput-boolean p7, p0, Lio/didomi/sdk/y4;->g:Z

    iput-object p8, p0, Lio/didomi/sdk/y4;->h:Ljava/lang/String;

    const-wide/16 p1, -0x3

    iput-wide p1, p0, Lio/didomi/sdk/y4;->i:J

    sget-object p1, Lio/didomi/sdk/w4$a;->b:Lio/didomi/sdk/w4$a;

    iput-object p1, p0, Lio/didomi/sdk/y4;->j:Lio/didomi/sdk/w4$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/didomi/sdk/y4;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 21

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_8

    :cond_7
    move v4, p3

    :goto_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lio/didomi/sdk/y4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lio/didomi/sdk/w4$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/y4;->j:Lio/didomi/sdk/w4$a;

    return-object v0
.end method

.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/y4;->g:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/y4;->k:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/y4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/y4;->g:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/y4;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/y4;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/y4;

    iget-object v1, p0, Lio/didomi/sdk/y4;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/y4;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/y4;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/y4;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lio/didomi/sdk/y4;->c:Z

    iget-boolean v3, p1, Lio/didomi/sdk/y4;->c:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    iget-object v3, p1, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lio/didomi/sdk/y4;->e:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/y4;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lio/didomi/sdk/y4;->f:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/y4;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-boolean v1, p0, Lio/didomi/sdk/y4;->g:Z

    iget-boolean v3, p1, Lio/didomi/sdk/y4;->g:Z

    if-eq v1, v3, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lio/didomi/sdk/y4;->h:Ljava/lang/String;

    iget-object p1, p1, Lio/didomi/sdk/y4;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/y4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/y4;->e:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lio/didomi/sdk/y4;->i:J

    return-wide v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/y4;->f:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/y4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/y4;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/y4;->c:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/y4;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/y4;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/y4;->g:Z

    if-eqz v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/y4;->h:Ljava/lang/String;

    if-nez v1, :cond_48

    goto :goto_4c

    :cond_48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/y4;->c:Z

    return v0
.end method

.method public j()Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurposeDisplayBulkAction(label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/y4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/y4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldHideToggle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/y4;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/y4;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityStateActionDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/y4;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityStateDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/y4;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityAnnounceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/y4;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityAnnounceStateLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/y4;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
