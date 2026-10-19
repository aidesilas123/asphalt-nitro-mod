###### Class io.didomi.drawable.C1806k.a.b.C0481a (io.didomi.sdk.k$a$b$a)
.class public final Lio/didomi/sdk/k$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/k$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/k$a$b$a$a;,
        Lio/didomi/sdk/k$a$b$a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008,\u0008\u0086\u0008\u0018\u0000 82\u00020\u0001:\u0002\u001c\u001fB\u008d\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001c\u0010\u001eR\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010\u0018R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010\'\u001a\u0004\u0008&\u0010)R\u001a\u0010\u000b\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010 \u001a\u0004\u0008#\u0010\"R \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001a\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u0010$\u001a\u0004\u0008+\u0010\u0018R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u00100\u001a\u0004\u0008/\u00101R\u001a\u0010\u0011\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010$\u001a\u0004\u0008*\u0010\u0018R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u00100R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010 \u001a\u0004\u0008\u001f\u0010\"\"\u0004\u0008\u001c\u00103R\u001d\u00107\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00082\u00101\u00a8\u00069"
    }
    d2 = {
        "Lio/didomi/sdk/k$a$b$a;",
        "",
        "",
        "all",
        "requireUpdatedGVL",
        "",
        "updateGVLTimeout",
        "",
        "",
        "include",
        "exclude",
        "enabled",
        "",
        "Lio/didomi/sdk/k$a$b$a$b;",
        "restrictions",
        "majorVersion",
        "minorVersion",
        "gvlSpecificationVersion",
        "internalCmpId",
        "<init>",
        "(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/Boolean;",
        "()Ljava/lang/Boolean;",
        "b",
        "Z",
        "i",
        "()Z",
        "c",
        "I",
        "k",
        "d",
        "Ljava/util/Set;",
        "f",
        "()Ljava/util/Set;",
        "e",
        "g",
        "Ljava/util/List;",
        "j",
        "()Ljava/util/List;",
        "h",
        "Ljava/lang/Integer;",
        "()Ljava/lang/Integer;",
        "l",
        "(Z)V",
        "canBeEnabled",
        "m",
        "Lkotlin/Lazy;",
        "validCmpId",
        "n",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final n:Lio/didomi/sdk/k$a$b$a$a;


# instance fields
.field private final a:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/r/c;
        value = "all"
    .end annotation
.end field

.field private final b:Z
    .annotation runtime Lcom/google/gson/r/c;
        value = "requireUpdatedGVL"
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lcom/google/gson/r/c;
        value = "updateGVLTimeout"
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "include"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/r/c;
        value = "exclude"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z
    .annotation runtime Lcom/google/gson/r/c;
        value = "enabled"
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        value = "restrictions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/k$a$b$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I
    .annotation runtime Lcom/google/gson/r/c;
        value = "version"
    .end annotation
.end field

.field private final i:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/r/c;
        value = "minorVersion"
    .end annotation
.end field

.field private final j:I
    .annotation runtime Lcom/google/gson/r/c;
        value = "gvlSpecificationVersion"
    .end annotation
.end field

.field private final k:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/r/c;
        value = "cmpId"
    .end annotation
.end field

.field private l:Z

.field private final m:Lkotlin/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/k$a$b$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/k$a$b$a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a;->n:Lio/didomi/sdk/k$a$b$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lio/didomi/sdk/k$a$b$a;-><init>(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "ZI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k$a$b$a$b;",
            ">;I",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "include"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exclude"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictions"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/k$a$b$a;->a:Ljava/lang/Boolean;

    iput-boolean p2, p0, Lio/didomi/sdk/k$a$b$a;->b:Z

    iput p3, p0, Lio/didomi/sdk/k$a$b$a;->c:I

    iput-object p4, p0, Lio/didomi/sdk/k$a$b$a;->d:Ljava/util/Set;

    iput-object p5, p0, Lio/didomi/sdk/k$a$b$a;->e:Ljava/util/Set;

    iput-boolean p6, p0, Lio/didomi/sdk/k$a$b$a;->f:Z

    iput-object p7, p0, Lio/didomi/sdk/k$a$b$a;->g:Ljava/util/List;

    iput p8, p0, Lio/didomi/sdk/k$a$b$a;->h:I

    iput-object p9, p0, Lio/didomi/sdk/k$a$b$a;->i:Ljava/lang/Integer;

    iput p10, p0, Lio/didomi/sdk/k$a$b$a;->j:I

    iput-object p11, p0, Lio/didomi/sdk/k$a$b$a;->k:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/didomi/sdk/k$a$b$a;->l:Z

    new-instance p1, Lio/didomi/sdk/k$a$b$a$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/k$a$b$a$c;-><init>(Lio/didomi/sdk/k$a$b$a;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/k$a$b$a;->m:Lkotlin/i;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;ILkotlin/jvm/internal/n;)V
    .registers 26

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    move v3, p2

    :goto_12
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    goto :goto_19

    :cond_18
    move v5, p3

    :goto_19
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_22

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v6

    goto :goto_24

    :cond_22
    move-object/from16 v6, p4

    :goto_24
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_2d

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_2f

    :cond_2d
    move-object/from16 v7, p5

    :goto_2f
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_34

    goto :goto_36

    :cond_34
    move/from16 v4, p6

    :goto_36
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_3f

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_41

    :cond_3f
    move-object/from16 v8, p7

    :goto_41
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_47

    const/4 v9, 0x2

    goto :goto_49

    :cond_47
    move/from16 v9, p8

    :goto_49
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_4f

    move-object v10, v2

    goto :goto_51

    :cond_4f
    move-object/from16 v10, p9

    :goto_51
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_57

    const/4 v11, 0x3

    goto :goto_59

    :cond_57
    move/from16 v11, p10

    :goto_59
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5e

    goto :goto_60

    :cond_5e
    move-object/from16 v2, p11

    :goto_60
    move-object p1, p0

    move-object p2, v1

    move p3, v3

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v4

    move-object/from16 p8, v8

    move/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v2

    invoke-direct/range {p1 .. p12}, Lio/didomi/sdk/k$a$b$a;-><init>(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/k$a$b$a;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/k$a$b$a;->k:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/k$a$b$a;->l:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k$a$b$a;->l:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k$a$b$a;->f:Z

    return v0
.end method

.method public final d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/k$a$b$a;->j:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/k$a$b$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/k$a$b$a;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->a:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/didomi/sdk/k$a$b$a;->a:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lio/didomi/sdk/k$a$b$a;->b:Z

    iget-boolean v3, p1, Lio/didomi/sdk/k$a$b$a;->b:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lio/didomi/sdk/k$a$b$a;->c:I

    iget v3, p1, Lio/didomi/sdk/k$a$b$a;->c:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->d:Ljava/util/Set;

    iget-object v3, p1, Lio/didomi/sdk/k$a$b$a;->d:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->e:Ljava/util/Set;

    iget-object v3, p1, Lio/didomi/sdk/k$a$b$a;->e:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lio/didomi/sdk/k$a$b$a;->f:Z

    iget-boolean v3, p1, Lio/didomi/sdk/k$a$b$a;->f:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->g:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/k$a$b$a;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget v1, p0, Lio/didomi/sdk/k$a$b$a;->h:I

    iget v3, p1, Lio/didomi/sdk/k$a$b$a;->h:I

    if-eq v1, v3, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lio/didomi/sdk/k$a$b$a;->i:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget v1, p0, Lio/didomi/sdk/k$a$b$a;->j:I

    iget v3, p1, Lio/didomi/sdk/k$a$b$a;->j:I

    if-eq v1, v3, :cond_66

    return v2

    :cond_66
    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->k:Ljava/lang/Integer;

    iget-object p1, p1, Lio/didomi/sdk/k$a$b$a;->k:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    return v2

    :cond_71
    return v0
.end method

.method public final f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/k$a$b$a;->h:I

    return v0
.end method

.method public final h()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/didomi/sdk/k$a$b$a;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/didomi/sdk/k$a$b$a;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k$a$b$a;->d:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k$a$b$a;->e:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/didomi/sdk/k$a$b$a;->f:Z

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k$a$b$a;->g:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/didomi/sdk/k$a$b$a;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k$a$b$a;->i:Ljava/lang/Integer;

    if-nez v2, :cond_4a

    const/4 v2, 0x0

    goto :goto_4e

    :cond_4a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/didomi/sdk/k$a$b$a;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/k$a$b$a;->k:Ljava/lang/Integer;

    if-nez v2, :cond_5b

    goto :goto_5f

    :cond_5b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5f
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/k$a$b$a;->b:Z

    return v0
.end method

.method public final j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k$a$b$a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->g:Ljava/util/List;

    return-object v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/k$a$b$a;->c:I

    return v0
.end method

.method public final l()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IABVendors(all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requireUpdatedGVL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k$a$b$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateGVLTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/k$a$b$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", include="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/k$a$b$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", restrictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", majorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/k$a$b$a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gvlSpecificationVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/k$a$b$a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", internalCmpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k$a$b$a;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
