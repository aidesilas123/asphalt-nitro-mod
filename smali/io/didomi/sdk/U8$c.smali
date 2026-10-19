###### Class io.didomi.drawable.U8.Vendor (io.didomi.sdk.U8$c)
.class public final Lio/didomi/sdk/U8$c;
.super Lio/didomi/sdk/U8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/U8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/U8$c$a;,
        Lio/didomi/sdk/U8$c$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\"\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 >2\u00020\u0001:\u0002\u001c Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010\u0015R\u001d\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001d\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010&\u001a\u0004\u0008)\u0010(R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010*\u001a\u0004\u00080\u0010,\"\u0004\u00081\u0010.R\"\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010*\u001a\u0004\u0008/\u0010,\"\u0004\u00083\u0010.R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u00104\u001a\u0004\u00082\u00105\"\u0004\u0008\u001c\u00106R\"\u0010\u0011\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010!\u001a\u0004\u0008#\u0010\u0017\"\u0004\u00087\u00108R\u001a\u0010:\u001a\u00020\u000b8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u00089\u0010*\u001a\u0004\u0008 \u0010,R\u0014\u0010=\u001a\u00020;8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010<\u00a8\u0006?"
    }
    d2 = {
        "Lio/didomi/sdk/U8$c;",
        "Lio/didomi/sdk/U8;",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "",
        "position",
        "",
        "accessibilityActionDescription",
        "",
        "accessibilityStateActionDescription",
        "accessibilityStateDescription",
        "",
        "hasBulkAction",
        "shouldBeEnabledByDefault",
        "canShowDetails",
        "Lio/didomi/sdk/U8$c$b;",
        "detailedInfo",
        "typeId",
        "<init>",
        "(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;I)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lio/didomi/sdk/models/InternalVendor;",
        "j",
        "()Lio/didomi/sdk/models/InternalVendor;",
        "b",
        "I",
        "i",
        "c",
        "Ljava/lang/String;",
        "d",
        "Ljava/util/List;",
        "e",
        "()Ljava/util/List;",
        "f",
        "Z",
        "getHasBulkAction",
        "()Z",
        "setHasBulkAction",
        "(Z)V",
        "g",
        "getShouldBeEnabledByDefault",
        "setShouldBeEnabledByDefault",
        "h",
        "setCanShowDetails",
        "Lio/didomi/sdk/U8$c$b;",
        "()Lio/didomi/sdk/U8$c$b;",
        "(Lio/didomi/sdk/U8$c$b;)V",
        "setTypeId",
        "(I)V",
        "k",
        "preventListAccessibilityAnnouncement",
        "",
        "()J",
        "id",
        "l",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final l:Lio/didomi/sdk/U8$c$a;


# instance fields
.field private final a:Lio/didomi/sdk/models/InternalVendor;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lio/didomi/sdk/U8$c$b;

.field private j:I

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/U8$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/U8$c$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/U8$c;->l:Lio/didomi/sdk/U8$c$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lio/didomi/sdk/U8$c$b;",
            "I)V"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateActionDescription"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateDescription"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/didomi/sdk/U8;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lio/didomi/sdk/U8$c;->a:Lio/didomi/sdk/models/InternalVendor;

    iput p2, p0, Lio/didomi/sdk/U8$c;->b:I

    iput-object p3, p0, Lio/didomi/sdk/U8$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/didomi/sdk/U8$c;->d:Ljava/util/List;

    iput-object p5, p0, Lio/didomi/sdk/U8$c;->e:Ljava/util/List;

    iput-boolean p6, p0, Lio/didomi/sdk/U8$c;->f:Z

    iput-boolean p7, p0, Lio/didomi/sdk/U8$c;->g:Z

    iput-boolean p8, p0, Lio/didomi/sdk/U8$c;->h:Z

    iput-object p9, p0, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    iput p10, p0, Lio/didomi/sdk/U8$c;->j:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;IILkotlin/jvm/internal/n;)V
    .registers 27

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v10, 0x0

    goto :goto_b

    :cond_9
    move/from16 v10, p7

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_11

    const/4 v11, 0x0

    goto :goto_13

    :cond_11
    move/from16 v11, p8

    :goto_13
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_1c

    :cond_1a
    move-object/from16 v12, p9

    :goto_1c
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    const/4 v13, 0x2

    goto :goto_25

    :cond_23
    move/from16 v13, p10

    :goto_25
    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v13}, Lio/didomi/sdk/U8$c;-><init>(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;I)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget v0, p0, Lio/didomi/sdk/U8$c;->b:I

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Lio/didomi/sdk/U8$c$b;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/U8$c;->k:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/U8$c;->j:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/U8$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/U8$c;->d:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/U8$c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/U8$c;

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->a:Lio/didomi/sdk/models/InternalVendor;

    iget-object v3, p1, Lio/didomi/sdk/U8$c;->a:Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/didomi/sdk/U8$c;->b:I

    iget v3, p1, Lio/didomi/sdk/U8$c;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/didomi/sdk/U8$c;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/U8$c;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lio/didomi/sdk/U8$c;->d:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/U8$c;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lio/didomi/sdk/U8$c;->e:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/U8$c;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->f:Z

    iget-boolean v3, p1, Lio/didomi/sdk/U8$c;->f:Z

    if-eq v1, v3, :cond_46

    return v2

    :cond_46
    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->g:Z

    iget-boolean v3, p1, Lio/didomi/sdk/U8$c;->g:Z

    if-eq v1, v3, :cond_4d

    return v2

    :cond_4d
    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->h:Z

    iget-boolean v3, p1, Lio/didomi/sdk/U8$c;->h:Z

    if-eq v1, v3, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    iget-object v3, p1, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget v1, p0, Lio/didomi/sdk/U8$c;->j:I

    iget p1, p1, Lio/didomi/sdk/U8$c;->j:I

    if-eq v1, p1, :cond_66

    return v2

    :cond_66
    return v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/U8$c;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/U8$c;->h:Z

    return v0
.end method

.method public final h()Lio/didomi/sdk/U8$c$b;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/U8$c;->a:Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/sdk/U8$c;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->f:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    :cond_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->g:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->h:Z

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move v3, v1

    :goto_44
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    if-nez v1, :cond_4c

    goto :goto_50

    :cond_4c
    invoke-virtual {v1}, Lio/didomi/sdk/U8$c$b;->hashCode()I

    move-result v2

    :goto_50
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/didomi/sdk/U8$c;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/U8$c;->b:I

    return v0
.end method

.method public final j()Lio/didomi/sdk/models/InternalVendor;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/U8$c;->a:Lio/didomi/sdk/models/InternalVendor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor(vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->a:Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/U8$c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityActionDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityStateActionDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityStateDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasBulkAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldBeEnabledByDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canShowDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/U8$c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", detailedInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/U8$c;->i:Lio/didomi/sdk/U8$c$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/U8$c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
