###### Class io.didomi.drawable.C1760f3 (io.didomi.sdk.f3)
.class public final Lio/didomi/sdk/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/d3;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00bb\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0013R\"\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\"\u0010!\u001a\u0004\u0008#\u0010$R(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010!\u001a\u0004\u0008&\u0010$R\"\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00068\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010!R\"\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010!R\"\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001cR\u001b\u0010,\u001a\u00020\u00028VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010\u0015R\'\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010*\u001a\u0004\u0008(\u0010$R\'\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020/0\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010*\u001a\u0004\u0008\u001b\u0010$R\'\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010*\u001a\u0004\u0008 \u0010$R\'\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010*\u001a\u0004\u0008\u001d\u0010$R\'\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010*\u001a\u0004\u0008\"\u0010$R\'\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010*\u001a\u0004\u0008%\u0010$R\u001b\u0010<\u001a\u00020\u00028VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010*\u001a\u0004\u0008;\u0010\u0015R\u001d\u0010A\u001a\u0004\u0018\u00010=8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010*\u001a\u0004\u0008?\u0010@R\"\u0010E\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008\'\u0010\u0015\"\u0004\u0008\u001b\u0010D\u00a8\u0006F"
    }
    d2 = {
        "Lio/didomi/sdk/f3;",
        "Lio/didomi/sdk/d3;",
        "",
        "internalVersion",
        "",
        "lastUpdated",
        "",
        "Lio/didomi/sdk/A;",
        "internalFeatures",
        "configPurposes",
        "internalSpecialFeatures",
        "Lio/didomi/sdk/C;",
        "configVendors",
        "internalSpecialPurposes",
        "internalDataCategories",
        "internalTcfPolicyVersion",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V",
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
        "Ljava/lang/Integer;",
        "b",
        "Ljava/lang/String;",
        "getLastUpdated",
        "c",
        "Ljava/util/Map;",
        "d",
        "h",
        "()Ljava/util/Map;",
        "e",
        "i",
        "f",
        "g",
        "j",
        "Lkotlin/Lazy;",
        "getVersion",
        "version",
        "k",
        "features",
        "Lio/didomi/sdk/models/InternalVendor;",
        "l",
        "vendors",
        "m",
        "purposes",
        "n",
        "specialFeatures",
        "o",
        "specialPurposes",
        "p",
        "dataCategories",
        "q",
        "getTcfPolicyVersion",
        "tcfPolicyVersion",
        "Ljava/util/Date;",
        "r",
        "getLastUpdatedDate",
        "()Ljava/util/Date;",
        "lastUpdatedDate",
        "s",
        "I",
        "(I)V",
        "maxVendorId",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendorListVersion"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "lastUpdated"
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "features"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "purposes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "specialFeatures"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "vendors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/C;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "specialPurposes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "dataCategories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/r/c;
        value = "tcfPolicyVersion"
    .end annotation
.end field

.field private final j:Lkotlin/i;

.field private final k:Lkotlin/i;

.field private final l:Lkotlin/i;

.field private final m:Lkotlin/i;

.field private final n:Lkotlin/i;

.field private final o:Lkotlin/i;

.field private final p:Lkotlin/i;

.field private final q:Lkotlin/i;

.field private final r:Lkotlin/i;

.field private s:I


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/didomi/sdk/f3;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/C;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/f3;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lio/didomi/sdk/f3;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/f3;->c:Ljava/util/Map;

    iput-object p4, p0, Lio/didomi/sdk/f3;->d:Ljava/util/Map;

    iput-object p5, p0, Lio/didomi/sdk/f3;->e:Ljava/util/Map;

    iput-object p6, p0, Lio/didomi/sdk/f3;->f:Ljava/util/Map;

    iput-object p7, p0, Lio/didomi/sdk/f3;->g:Ljava/util/Map;

    iput-object p8, p0, Lio/didomi/sdk/f3;->h:Ljava/util/Map;

    iput-object p9, p0, Lio/didomi/sdk/f3;->i:Ljava/lang/Integer;

    new-instance p1, Lio/didomi/sdk/f3$i;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$i;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->j:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$b;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->k:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$h;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$h;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->l:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$d;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$d;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->m:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$e;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$e;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->n:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$f;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$f;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->o:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$a;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$a;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->p:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$g;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$g;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->q:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/f3$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/f3$c;-><init>(Lio/didomi/sdk/f3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/f3;->r:Lkotlin/i;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;ILkotlin/jvm/internal/n;)V
    .registers 22

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    move-object v3, v2

    goto :goto_11

    :cond_10
    move-object v3, p2

    :goto_11
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_17

    move-object v4, v2

    goto :goto_18

    :cond_17
    move-object v4, p3

    :goto_18
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1e

    move-object v5, v2

    goto :goto_1f

    :cond_1e
    move-object v5, p4

    :goto_1f
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_25

    move-object v6, v2

    goto :goto_26

    :cond_25
    move-object v6, p5

    :goto_26
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_2c

    move-object v7, v2

    goto :goto_2e

    :cond_2c
    move-object/from16 v7, p6

    :goto_2e
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_34

    move-object v8, v2

    goto :goto_36

    :cond_34
    move-object/from16 v8, p7

    :goto_36
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_3c

    move-object v9, v2

    goto :goto_3e

    :cond_3c
    move-object/from16 v9, p8

    :goto_3e
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    move-object/from16 v2, p9

    :goto_45
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v2

    invoke-direct/range {p1 .. p10}, Lio/didomi/sdk/f3;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/f3;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/f3;->f:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic b(Lio/didomi/sdk/f3;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/f3;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic c(Lio/didomi/sdk/f3;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/f3;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic d(Lio/didomi/sdk/f3;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/f3;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic e(Lio/didomi/sdk/f3;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/f3;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic f(Lio/didomi/sdk/f3;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/f3;->a:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->l:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lio/didomi/sdk/f3;->s:I

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->p:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/f3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/f3;

    iget-object v1, p0, Lio/didomi/sdk/f3;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lio/didomi/sdk/f3;->a:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/f3;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/f3;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/f3;->c:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/f3;->c:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/f3;->d:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/f3;->d:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/f3;->e:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/f3;->e:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/f3;->f:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/f3;->f:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/f3;->g:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/f3;->g:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/f3;->h:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/f3;->h:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/didomi/sdk/f3;->i:Ljava/lang/Integer;

    iget-object p1, p1, Lio/didomi/sdk/f3;->i:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    return v2

    :cond_6f
    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/f3;->s:I

    return v0
.end method

.method public g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->k:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/f3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTcfPolicyVersion()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/f3;->q:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/f3;->j:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->d:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/f3;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->b:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->c:Ljava/util/Map;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->d:Ljava/util/Map;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->e:Ljava/util/Map;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->f:Ljava/util/Map;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->g:Ljava/util/Map;

    if-nez v2, :cond_54

    const/4 v2, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->h:Ljava/util/Map;

    if-nez v2, :cond_61

    const/4 v2, 0x0

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/f3;->i:Ljava/lang/Integer;

    if-nez v2, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_71
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/f3;->e:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IABConfigurationTCFV2(internalVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internalFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalSpecialFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configVendors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalSpecialPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalDataCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalTcfPolicyVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/f3;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
