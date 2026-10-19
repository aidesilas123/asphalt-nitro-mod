###### Class io.didomi.drawable.Didomi (io.didomi.sdk.Didomi)
.class public final Lio/didomi/sdk/Didomi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/Didomi$Companion;,
        Lio/didomi/sdk/Didomi$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\"\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010$\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00de\u00022\u00020\u0001:\u0002\u00de\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000fJ\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u001d\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010$\u001a\u00020\u0006\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010(\u001a\u00020\u0006\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u0018\u00a2\u0006\u0004\u0008,\u0010-J\r\u0010.\u001a\u00020\u0018\u00a2\u0006\u0004\u0008.\u0010-J\r\u0010/\u001a\u00020\u0018\u00a2\u0006\u0004\u0008/\u0010-J\r\u00100\u001a\u00020\u0010\u00a2\u0006\u0004\u00080\u0010\u0012J\u000f\u00101\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u00081\u0010\u0012J\r\u00102\u001a\u00020\u0010\u00a2\u0006\u0004\u00082\u0010\u0012J\r\u00103\u001a\u00020\u0010\u00a2\u0006\u0004\u00083\u0010\u0012J\u008d\u0001\u0010=\u001a\u00020\u00102\u000e\u00105\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00107\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u00109\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001042\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u000104\u00a2\u0006\u0004\u0008=\u0010>J-\u0010=\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00102\u0006\u0010A\u001a\u00020\u00102\u0006\u0010B\u001a\u00020\u0010\u00a2\u0006\u0004\u0008=\u0010CJ\u0015\u0010F\u001a\u00020\u00102\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010I\u001a\u00020HH\u0007\u00a2\u0006\u0004\u0008I\u0010JJ\r\u0010K\u001a\u00020H\u00a2\u0006\u0004\u0008K\u0010JJ\r\u0010L\u001a\u00020\u0004\u00a2\u0006\u0004\u0008L\u0010\u0003J\u0015\u0010O\u001a\u00020\u00042\u0006\u0010N\u001a\u00020M\u00a2\u0006\u0004\u0008O\u0010PJ\u0015\u0010Q\u001a\u00020\u00042\u0006\u0010N\u001a\u00020M\u00a2\u0006\u0004\u0008Q\u0010PJ\u0015\u0010S\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020R\u00a2\u0006\u0004\u0008S\u0010TJ\u0015\u0010S\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020U\u00a2\u0006\u0004\u0008S\u0010VJ\u0015\u0010W\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020U\u00a2\u0006\u0004\u0008W\u0010VJ\u001d\u0010X\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008X\u0010\u000bJ\u0015\u0010Y\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0017\u0010[\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008[\u0010\u000fJ\u0017\u0010\\\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\\\u0010\u000fJ\u0017\u0010]\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008]\u0010\u000fJ\r\u0010^\u001a\u00020\u0004\u00a2\u0006\u0004\u0008^\u0010\u0003J\r\u0010_\u001a\u00020\u0010\u00a2\u0006\u0004\u0008_\u0010\u0012J%\u0010a\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010`\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008a\u0010bJ\r\u0010c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008c\u0010\u0003J\r\u0010d\u001a\u00020\u0010\u00a2\u0006\u0004\u0008d\u0010\u0012J\u0015\u0010f\u001a\u00020\u00042\u0006\u0010e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008f\u0010ZJ#\u0010i\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010h2\u0006\u0010g\u001a\u00020\u0006\u00a2\u0006\u0004\u0008i\u0010jJ\u0015\u0010k\u001a\u00020\u00062\u0006\u0010g\u001a\u00020\u0006\u00a2\u0006\u0004\u0008k\u0010lJ\u001b\u0010n\u001a\u00020\u00062\n\u0008\u0002\u0010m\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008n\u0010lJ\u001d\u0010q\u001a\u00020\u00042\u0006\u0010o\u001a\u00020\u00062\u0006\u0010p\u001a\u00020\u0006\u00a2\u0006\u0004\u0008q\u0010rJ/\u0010u\u001a\u00020\u00042\u0006\u0010s\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010t\u001a\u0004\u0018\u00010\u0010H\u0007\u00a2\u0006\u0004\u0008u\u0010vJA\u0010u\u001a\u00020\u00042\u0006\u0010x\u001a\u00020w2\u0010\u0008\u0002\u0010z\u001a\n\u0012\u0004\u0012\u00020w\u0018\u00010y2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010t\u001a\u0004\u0018\u00010\u0010H\u0007\u00a2\u0006\u0004\u0008u\u0010{J\r\u0010|\u001a\u00020\u0004\u00a2\u0006\u0004\u0008|\u0010\u0003J$\u0010\u0080\u0001\u001a\u00020\u00102\u0006\u0010}\u001a\u00020\u00102\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0000\u00a2\u0006\u0004\u0008~\u0010\u007fJ#\u0010\u0082\u0001\u001a\u00020\u00042\u0006\u0010g\u001a\u00020\u00062\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001R!\u0010\u0089\u0001\u001a\u00030\u0084\u00018@X\u0080\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R!\u0010\u008e\u0001\u001a\u00030\u008a\u00018@X\u0080\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u008b\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001R!\u0010\u0093\u0001\u001a\u00030\u008f\u00018@X\u0080\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001R!\u0010\u0098\u0001\u001a\u00030\u0094\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0019\u0010\u0099\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R1\u0010\u009c\u0001\u001a\u00030\u009b\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001\u0012\u0005\u0008\u00a2\u0001\u0010\u0003\u001a\u0006\u0008\u009e\u0001\u0010\u009f\u0001\"\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R1\u0010\u00a4\u0001\u001a\u00030\u00a3\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\u0012\u0005\u0008\u00aa\u0001\u0010\u0003\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R*\u0010\u00ac\u0001\u001a\u00030\u00ab\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u00af\u0001\"\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R*\u0010\u00b3\u0001\u001a\u00030\u00b2\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\"\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R*\u0010\u00ba\u0001\u001a\u00030\u00b9\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\u001a\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\"\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R*\u0010\u00c1\u0001\u001a\u00030\u00c0\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\"\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R*\u0010\u00c8\u0001\u001a\u00030\u00c7\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001\u001a\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\"\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R1\u0010\u00cf\u0001\u001a\u00030\u00ce\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u001f\n\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001\u0012\u0005\u0008\u00d5\u0001\u0010\u0003\u001a\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001\"\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R*\u0010\u00d7\u0001\u001a\u00030\u00d6\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001\u001a\u0006\u0008\u00d9\u0001\u0010\u00da\u0001\"\u0006\u0008\u00db\u0001\u0010\u00dc\u0001R*\u0010\u00de\u0001\u001a\u00030\u00dd\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00de\u0001\u0010\u00df\u0001\u001a\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001\"\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R*\u0010\u00e5\u0001\u001a\u00030\u00e4\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001\u001a\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001\"\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001R*\u0010\u00ec\u0001\u001a\u00030\u00eb\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001\u001a\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001\"\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001R*\u0010\u00f3\u0001\u001a\u00030\u00f2\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001\u001a\u0006\u0008\u00f5\u0001\u0010\u00f6\u0001\"\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001R*\u0010\u00fa\u0001\u001a\u00030\u00f9\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00fa\u0001\u0010\u00fb\u0001\u001a\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001\"\u0006\u0008\u00fe\u0001\u0010\u00ff\u0001R*\u0010\u0081\u0002\u001a\u00030\u0080\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u0081\u0002\u0010\u0082\u0002\u001a\u0006\u0008\u0083\u0002\u0010\u0084\u0002\"\u0006\u0008\u0085\u0002\u0010\u0086\u0002R*\u0010\u0088\u0002\u001a\u00030\u0087\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u0088\u0002\u0010\u0089\u0002\u001a\u0006\u0008\u008a\u0002\u0010\u008b\u0002\"\u0006\u0008\u008c\u0002\u0010\u008d\u0002R*\u0010\u008f\u0002\u001a\u00030\u008e\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u008f\u0002\u0010\u0090\u0002\u001a\u0006\u0008\u0091\u0002\u0010\u0092\u0002\"\u0006\u0008\u0093\u0002\u0010\u0094\u0002R*\u0010\u0096\u0002\u001a\u00030\u0095\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u0096\u0002\u0010\u0097\u0002\u001a\u0006\u0008\u0098\u0002\u0010\u0099\u0002\"\u0006\u0008\u009a\u0002\u0010\u009b\u0002R*\u0010\u009d\u0002\u001a\u00030\u009c\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u009d\u0002\u0010\u009e\u0002\u001a\u0006\u0008\u009f\u0002\u0010\u00a0\u0002\"\u0006\u0008\u00a1\u0002\u0010\u00a2\u0002R*\u0010\u00a4\u0002\u001a\u00030\u00a3\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u0018\n\u0006\u0008\u00a4\u0002\u0010\u00a5\u0002\u001a\u0006\u0008\u00a6\u0002\u0010\u00a7\u0002\"\u0006\u0008\u00a8\u0002\u0010\u00a9\u0002R\u0018\u0010\u00ab\u0002\u001a\u00030\u00aa\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0002\u0010\u00ac\u0002R\u0018\u0010\u00ae\u0002\u001a\u00030\u00ad\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0002\u0010\u00af\u0002R)\u0010\u00b1\u0002\u001a\u00020\u00102\u0007\u0010\u00b0\u0002\u001a\u00020\u00108\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0006\u0008\u00b1\u0002\u0010\u009a\u0001\u001a\u0005\u0008\u00b1\u0002\u0010\u0012R)\u0010\u00b2\u0002\u001a\u00020\u00102\u0007\u0010\u00b0\u0002\u001a\u00020\u00108\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0006\u0008\u00b2\u0002\u0010\u009a\u0001\u001a\u0005\u0008\u00b2\u0002\u0010\u0012R)\u0010\u00b3\u0002\u001a\u00020\u00102\u0007\u0010\u00b0\u0002\u001a\u00020\u00108\u0006@BX\u0086\u000e\u00a2\u0006\u000f\n\u0006\u0008\u00b3\u0002\u0010\u009a\u0001\u001a\u0005\u0008\u00b3\u0002\u0010\u0012R(\u0010\u00b4\u0002\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00b4\u0002\u0010\u009a\u0001\u001a\u0005\u0008\u00b5\u0002\u0010\u0012\"\u0006\u0008\u00b6\u0002\u0010\u00b7\u0002R\u0017\u0010\u00b8\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0002\u0010\u00b9\u0002R\u001d\u0010\u00ba\u0002\u001a\u00020\u00108FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00bb\u0002\u0010\u0003\u001a\u0005\u0008\u00ba\u0002\u0010\u0012R\u001d\u0010\u00bc\u0002\u001a\u00020\u00108FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00bd\u0002\u0010\u0003\u001a\u0005\u0008\u00bc\u0002\u0010\u0012R\u001d\u0010\u00be\u0002\u001a\u00020\u00108FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00bf\u0002\u0010\u0003\u001a\u0005\u0008\u00be\u0002\u0010\u0012R\u001f\u0010\u00c4\u0002\u001a\u00030\u00c0\u00028FX\u0087\u0004\u00a2\u0006\u000f\u0012\u0005\u0008\u00c3\u0002\u0010\u0003\u001a\u0006\u0008\u00c1\u0002\u0010\u00c2\u0002R\u0018\u0010\u00c8\u0002\u001a\u00030\u00c5\u00028@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c6\u0002\u0010\u00c7\u0002R\u0013\u0010\u00ca\u0002\u001a\u00020\u00108F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c9\u0002\u0010\u0012R\u0013\u0010\u00cb\u0002\u001a\u00020\u00108F\u00a2\u0006\u0007\u001a\u0005\u0008\u00cb\u0002\u0010\u0012R\u0013\u0010E\u001a\u00020D8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00cc\u0002\u0010\u00cd\u0002R\u001a\u0010\u00d0\u0002\u001a\u0008\u0012\u0004\u0012\u00020%048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ce\u0002\u0010\u00cf\u0002R\u001a\u0010\u00d2\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u0006048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d1\u0002\u0010\u00cf\u0002R\u001a\u0010\u00d4\u0002\u001a\u0008\u0012\u0004\u0012\u00020)048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d3\u0002\u0010\u00cf\u0002R\u001a\u0010\u00d6\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u0006048F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d5\u0002\u0010\u00cf\u0002R\u0015\u0010\u00da\u0002\u001a\u00030\u00d7\u00028F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d8\u0002\u0010\u00d9\u0002R\u0014\u0010\u00dd\u0002\u001a\u00020\u00068F\u00a2\u0006\u0008\u001a\u0006\u0008\u00db\u0002\u0010\u00dc\u0002\u00a8\u0006\u00df\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/Didomi;",
        "",
        "<init>",
        "()V",
        "",
        "resetComponents",
        "",
        "id",
        "Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;",
        "listener",
        "registerVendorStatusListener",
        "(Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "setupUIOnSyncDone",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "",
        "handleOrganizationUserChange",
        "()Z",
        "syncIfRequired",
        "Landroid/app/Application;",
        "application",
        "preparePageViewEvent",
        "(Landroid/app/Application;)V",
        "",
        "minLevel",
        "setLogLevel",
        "(I)V",
        "ready$android_release",
        "ready",
        "readyOrThrow$android_release",
        "readyOrThrow",
        "Lio/didomi/sdk/DidomiInitializeParameters;",
        "parameters",
        "initialize",
        "(Landroid/app/Application;Lio/didomi/sdk/DidomiInitializeParameters;)V",
        "purposeId",
        "Lio/didomi/sdk/Purpose;",
        "getPurpose",
        "(Ljava/lang/String;)Lio/didomi/sdk/Purpose;",
        "vendorId",
        "Lio/didomi/sdk/Vendor;",
        "getVendor",
        "(Ljava/lang/String;)Lio/didomi/sdk/Vendor;",
        "getTotalVendorCount",
        "()I",
        "getIabVendorCount",
        "getNonIabVendorCount",
        "shouldUserStatusBeCollected",
        "shouldConsentBeCollected",
        "setUserAgreeToAll",
        "setUserDisagreeToAll",
        "",
        "enabledConsentPurposeIds",
        "disabledConsentPurposeIds",
        "enabledLIPurposeIds",
        "disabledLIPurposeIds",
        "enabledConsentVendorIds",
        "disabledConsentVendorIds",
        "enabledLIVendorIds",
        "disabledLIVendorIds",
        "setUserStatus",
        "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z",
        "purposesConsentStatus",
        "purposesLIStatus",
        "vendorsConsentStatus",
        "vendorsLIStatus",
        "(ZZZZ)Z",
        "Lio/didomi/sdk/models/CurrentUserStatus;",
        "currentUserStatus",
        "setCurrentUserStatus",
        "(Lio/didomi/sdk/models/CurrentUserStatus;)Z",
        "Lio/didomi/sdk/consent/CurrentUserStatusTransaction;",
        "openCurrentUserTransaction",
        "()Lio/didomi/sdk/consent/CurrentUserStatusTransaction;",
        "openCurrentUserStatusTransaction",
        "reset",
        "Lio/didomi/sdk/functionalinterfaces/DidomiCallable;",
        "callback",
        "onReady",
        "(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V",
        "onError",
        "Lio/didomi/sdk/events/EventListener;",
        "addEventListener",
        "(Lio/didomi/sdk/events/EventListener;)V",
        "Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;",
        "(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)V",
        "removeEventListener",
        "addVendorStatusListener",
        "removeVendorStatusListener",
        "(Ljava/lang/String;)V",
        "setupUI",
        "forceShowNotice",
        "showNotice",
        "hideNotice",
        "isNoticeVisible",
        "view",
        "showPreferences",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V",
        "hidePreferences",
        "isPreferencesVisible",
        "languageCode",
        "updateSelectedLanguage",
        "key",
        "",
        "getText",
        "(Ljava/lang/String;)Ljava/util/Map;",
        "getTranslatedText",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "extra",
        "getJavaScriptForWebView",
        "name",
        "version",
        "setUserAgent",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "organizationUserId",
        "isUnderage",
        "setUser",
        "(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V",
        "Lio/didomi/sdk/user/UserAuthParams;",
        "userAuthParams",
        "",
        "synchronizedUsers",
        "(Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V",
        "clearUser",
        "blocking",
        "sync$android_release",
        "(ZLandroidx/fragment/app/FragmentActivity;)Z",
        "sync",
        "value",
        "setLocalProperty",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "Lio/didomi/sdk/M2;",
        "eventsRepository$delegate",
        "Lkotlin/Lazy;",
        "getEventsRepository$android_release",
        "()Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/P3;",
        "organizationUserRepository$delegate",
        "getOrganizationUserRepository$android_release",
        "()Lio/didomi/sdk/P3;",
        "organizationUserRepository",
        "Lio/didomi/sdk/F8;",
        "userAgentRepository$delegate",
        "getUserAgentRepository$android_release",
        "()Lio/didomi/sdk/F8;",
        "userAgentRepository",
        "Lio/didomi/sdk/z3;",
        "localPropertiesRepository$delegate",
        "getLocalPropertiesRepository",
        "()Lio/didomi/sdk/z3;",
        "localPropertiesRepository",
        "requestResetAtInitialize",
        "Z",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/apiEvents/b;",
        "getApiEventsRepository",
        "()Lio/didomi/sdk/apiEvents/b;",
        "setApiEventsRepository",
        "(Lio/didomi/sdk/apiEvents/b;)V",
        "getApiEventsRepository$annotations",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/H;",
        "getConfigurationRepository",
        "()Lio/didomi/sdk/H;",
        "setConfigurationRepository",
        "(Lio/didomi/sdk/H;)V",
        "getConfigurationRepository$annotations",
        "Lio/didomi/sdk/Z4;",
        "purposesTranslationsRepository",
        "Lio/didomi/sdk/Z4;",
        "getPurposesTranslationsRepository$android_release",
        "()Lio/didomi/sdk/Z4;",
        "setPurposesTranslationsRepository$android_release",
        "(Lio/didomi/sdk/Z4;)V",
        "Lio/didomi/sdk/J;",
        "connectivityHelper",
        "Lio/didomi/sdk/J;",
        "getConnectivityHelper$android_release",
        "()Lio/didomi/sdk/J;",
        "setConnectivityHelper$android_release",
        "(Lio/didomi/sdk/J;)V",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/V;",
        "getConsentRepository$android_release",
        "()Lio/didomi/sdk/V;",
        "setConsentRepository$android_release",
        "(Lio/didomi/sdk/V;)V",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "Lio/didomi/sdk/Z;",
        "getContextHelper$android_release",
        "()Lio/didomi/sdk/Z;",
        "setContextHelper$android_release",
        "(Lio/didomi/sdk/Z;)V",
        "Lio/didomi/sdk/Z2;",
        "httpRequestHelper",
        "Lio/didomi/sdk/Z2;",
        "getHttpRequestHelper$android_release",
        "()Lio/didomi/sdk/Z2;",
        "setHttpRequestHelper$android_release",
        "(Lio/didomi/sdk/Z2;)V",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/v3;",
        "getLanguagesHelper",
        "()Lio/didomi/sdk/v3;",
        "setLanguagesHelper",
        "(Lio/didomi/sdk/v3;)V",
        "getLanguagesHelper$annotations",
        "Lio/didomi/sdk/l5;",
        "remoteFilesHelper",
        "Lio/didomi/sdk/l5;",
        "getRemoteFilesHelper$android_release",
        "()Lio/didomi/sdk/l5;",
        "setRemoteFilesHelper$android_release",
        "(Lio/didomi/sdk/l5;)V",
        "Lio/didomi/sdk/s5;",
        "resourcesHelper",
        "Lio/didomi/sdk/s5;",
        "getResourcesHelper$android_release",
        "()Lio/didomi/sdk/s5;",
        "setResourcesHelper$android_release",
        "(Lio/didomi/sdk/s5;)V",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences$android_release",
        "()Landroid/content/SharedPreferences;",
        "setSharedPreferences$android_release",
        "(Landroid/content/SharedPreferences;)V",
        "Lio/didomi/sdk/c6;",
        "syncRepository",
        "Lio/didomi/sdk/c6;",
        "getSyncRepository$android_release",
        "()Lio/didomi/sdk/c6;",
        "setSyncRepository$android_release",
        "(Lio/didomi/sdk/c6;)V",
        "Lio/didomi/sdk/h3;",
        "iabStorageRepository",
        "Lio/didomi/sdk/h3;",
        "getIabStorageRepository$android_release",
        "()Lio/didomi/sdk/h3;",
        "setIabStorageRepository$android_release",
        "(Lio/didomi/sdk/h3;)V",
        "Lio/didomi/sdk/E8;",
        "uiStateRepository",
        "Lio/didomi/sdk/E8;",
        "getUiStateRepository$android_release",
        "()Lio/didomi/sdk/E8;",
        "setUiStateRepository$android_release",
        "(Lio/didomi/sdk/E8;)V",
        "Lio/didomi/sdk/D8;",
        "uiProvider",
        "Lio/didomi/sdk/D8;",
        "getUiProvider$android_release",
        "()Lio/didomi/sdk/D8;",
        "setUiProvider$android_release",
        "(Lio/didomi/sdk/D8;)V",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "Lio/didomi/sdk/G8;",
        "getUserChoicesInfoProvider$android_release",
        "()Lio/didomi/sdk/G8;",
        "setUserChoicesInfoProvider$android_release",
        "(Lio/didomi/sdk/G8;)V",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "Lio/didomi/sdk/P8;",
        "getUserStatusRepository$android_release",
        "()Lio/didomi/sdk/P8;",
        "setUserStatusRepository$android_release",
        "(Lio/didomi/sdk/P8;)V",
        "Lio/didomi/sdk/M8;",
        "userRepository",
        "Lio/didomi/sdk/M8;",
        "getUserRepository$android_release",
        "()Lio/didomi/sdk/M8;",
        "setUserRepository$android_release",
        "(Lio/didomi/sdk/M8;)V",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/V8;",
        "getVendorRepository$android_release",
        "()Lio/didomi/sdk/V8;",
        "setVendorRepository$android_release",
        "(Lio/didomi/sdk/V8;)V",
        "Lio/didomi/sdk/I3;",
        "navigationManager",
        "Lio/didomi/sdk/I3;",
        "getNavigationManager$android_release",
        "()Lio/didomi/sdk/I3;",
        "setNavigationManager$android_release",
        "(Lio/didomi/sdk/I3;)V",
        "Lio/didomi/sdk/K0;",
        "componentProvider",
        "Lio/didomi/sdk/K0;",
        "Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;",
        "lifecycleHandler",
        "Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;",
        "<set-?>",
        "isReady",
        "isError",
        "isInitialized",
        "isInitializeInProgress",
        "isInitializeInProgress$android_release",
        "setInitializeInProgress$android_release",
        "(Z)V",
        "initializationEventLock",
        "Ljava/lang/Object;",
        "isConsentRequired",
        "isConsentRequired$annotations",
        "isUserConsentStatusPartial",
        "isUserConsentStatusPartial$annotations",
        "isUserLegitimateInterestStatusPartial",
        "isUserLegitimateInterestStatusPartial$annotations",
        "Lio/didomi/sdk/models/UserStatus;",
        "getUserStatus",
        "()Lio/didomi/sdk/models/UserStatus;",
        "getUserStatus$annotations",
        "userStatus",
        "Lio/didomi/sdk/J0;",
        "getComponent$android_release",
        "()Lio/didomi/sdk/J0;",
        "component",
        "getHasAnyStatus",
        "hasAnyStatus",
        "isUserStatusPartial",
        "getCurrentUserStatus",
        "()Lio/didomi/sdk/models/CurrentUserStatus;",
        "getRequiredPurposes",
        "()Ljava/util/Set;",
        "requiredPurposes",
        "getRequiredPurposeIds",
        "requiredPurposeIds",
        "getRequiredVendors",
        "requiredVendors",
        "getRequiredVendorIds",
        "requiredVendorIds",
        "Lio/didomi/sdk/E0;",
        "getDeviceType",
        "()Lio/didomi/sdk/E0;",
        "deviceType",
        "getQueryStringForWebView",
        "()Ljava/lang/String;",
        "queryStringForWebView",
        "Companion",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lio/didomi/sdk/Didomi$Companion;

.field public static final VIEW_PURPOSES:Ljava/lang/String; = "purposes"

.field public static final VIEW_SENSITIVE_PERSONAL_INFORMATION:Ljava/lang/String; = "sensitive-personal-information"

.field public static final VIEW_VENDORS:Ljava/lang/String; = "vendors"

.field private static currentInstance:Lio/didomi/sdk/Didomi;


# instance fields
.field public apiEventsRepository:Lio/didomi/sdk/apiEvents/b;

.field private final componentProvider:Lio/didomi/sdk/K0;

.field public configurationRepository:Lio/didomi/sdk/H;

.field public connectivityHelper:Lio/didomi/sdk/J;

.field public consentRepository:Lio/didomi/sdk/V;

.field public contextHelper:Lio/didomi/sdk/Z;

.field private final eventsRepository$delegate:Lkotlin/i;

.field public httpRequestHelper:Lio/didomi/sdk/Z2;

.field public iabStorageRepository:Lio/didomi/sdk/h3;

.field private final initializationEventLock:Ljava/lang/Object;

.field private isError:Z

.field private isInitializeInProgress:Z

.field private isInitialized:Z

.field private isReady:Z

.field public languagesHelper:Lio/didomi/sdk/v3;

.field private final lifecycleHandler:Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;

.field private final localPropertiesRepository$delegate:Lkotlin/i;

.field public navigationManager:Lio/didomi/sdk/I3;

.field private final organizationUserRepository$delegate:Lkotlin/i;

.field public purposesTranslationsRepository:Lio/didomi/sdk/Z4;

.field public remoteFilesHelper:Lio/didomi/sdk/l5;

.field private requestResetAtInitialize:Z

.field public resourcesHelper:Lio/didomi/sdk/s5;

.field public sharedPreferences:Landroid/content/SharedPreferences;

.field public syncRepository:Lio/didomi/sdk/c6;

.field public uiProvider:Lio/didomi/sdk/D8;

.field public uiStateRepository:Lio/didomi/sdk/E8;

.field private final userAgentRepository$delegate:Lkotlin/i;

.field public userChoicesInfoProvider:Lio/didomi/sdk/G8;

.field public userRepository:Lio/didomi/sdk/M8;

.field public userStatusRepository:Lio/didomi/sdk/P8;

.field public vendorRepository:Lio/didomi/sdk/V8;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/Didomi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/Didomi$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/didomi/sdk/Didomi$b;->a:Lio/didomi/sdk/Didomi$b;

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->eventsRepository$delegate:Lkotlin/i;

    sget-object v0, Lio/didomi/sdk/Didomi$f;->a:Lio/didomi/sdk/Didomi$f;

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->organizationUserRepository$delegate:Lkotlin/i;

    sget-object v0, Lio/didomi/sdk/Didomi$i;->a:Lio/didomi/sdk/Didomi$i;

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->userAgentRepository$delegate:Lkotlin/i;

    sget-object v0, Lio/didomi/sdk/Didomi$c;->a:Lio/didomi/sdk/Didomi$c;

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->localPropertiesRepository$delegate:Lkotlin/i;

    sget-object v0, Lio/didomi/sdk/K0;->a:Lio/didomi/sdk/K0;

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->componentProvider:Lio/didomi/sdk/K0;

    new-instance v0, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;

    invoke-direct {v0}, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->lifecycleHandler:Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/Didomi;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/Didomi;->initialize$lambda$5(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V

    return-void
.end method

.method public static final synthetic access$getCurrentInstance$cp()Lio/didomi/sdk/Didomi;
    .registers 1

    sget-object v0, Lio/didomi/sdk/Didomi;->currentInstance:Lio/didomi/sdk/Didomi;

    return-object v0
.end method

.method public static final synthetic access$setCurrentInstance$cp(Lio/didomi/sdk/Didomi;)V
    .registers 1

    sput-object p0, Lio/didomi/sdk/Didomi;->currentInstance:Lio/didomi/sdk/Didomi;

    return-void
.end method

.method private static final addVendorStatusListener$lambda$9(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/Didomi;->registerVendorStatusListener(Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    return-void
.end method

.method public static synthetic b(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/Didomi;->addVendorStatusListener$lambda$9(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Didomi;->updateSelectedLanguage$lambda$13(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    return-void
.end method

.method public static final clearInstance()V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->clearInstance()V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/Didomi;->removeVendorStatusListener$lambda$10(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getApiEventsRepository$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getConfigurationRepository$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final getInstance()Lio/didomi/sdk/Didomi;
    .registers 1

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getJavaScriptForWebView$default(Lio/didomi/sdk/Didomi;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Lio/didomi/sdk/Didomi;->getJavaScriptForWebView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLanguagesHelper$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getLocalPropertiesRepository()Lio/didomi/sdk/z3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->localPropertiesRepository$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/z3;

    return-object v0
.end method

.method public static synthetic getUserStatus$annotations()V
    .registers 0

    return-void
.end method

.method private final handleOrganizationUserChange()Z
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentToken;->getLastSyncedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_32

    if-eqz v2, :cond_32

    if-eqz v0, :cond_32

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_32

    :cond_2f
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->reset()V

    :cond_32
    :goto_32
    return v2
.end method

.method private static final initialize$lambda$5(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V
    .registers 12

    const-string v0, "$parameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_11
    invoke-static {p0}, Lio/didomi/sdk/o2;->a(Lio/didomi/sdk/DidomiInitializeParameters;)V

    iget-object v2, p1, Lio/didomi/sdk/Didomi;->componentProvider:Lio/didomi/sdk/K0;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "application.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v4

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getUserAgentRepository$android_release()Lio/didomi/sdk/F8;

    move-result-object v5

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object v6

    invoke-direct {p1}, Lio/didomi/sdk/Didomi;->getLocalPropertiesRepository()Lio/didomi/sdk/z3;

    move-result-object v7

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lio/didomi/sdk/K0;->a(Landroid/content/Context;Lio/didomi/sdk/M2;Lio/didomi/sdk/F8;Lio/didomi/sdk/P3;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V

    iget-object v2, p1, Lio/didomi/sdk/Didomi;->componentProvider:Lio/didomi/sdk/K0;

    invoke-virtual {v2}, Lio/didomi/sdk/K0;->a()Lio/didomi/sdk/J0;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/Didomi;)V

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getUserChoicesInfoProvider$android_release()Lio/didomi/sdk/G8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->j()V

    sget-object v2, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v3, "SDK configuration loaded"

    invoke-virtual {v2, v3}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getIabStorageRepository$android_release()Lio/didomi/sdk/h3;

    move-result-object v3

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getConfigurationRepository()Lio/didomi/sdk/H;

    move-result-object v4

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/didomi/sdk/h3;->a(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V

    const-string v3, "Consent parameters initialized"

    invoke-virtual {v2, v3}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5e} :catch_b2

    iget-object v3, p1, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_61
    iput-boolean v1, p1, Lio/didomi/sdk/Didomi;->isReady:Z

    iput-boolean v0, p1, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_af

    :try_start_65
    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getIabStorageRepository$android_release()Lio/didomi/sdk/h3;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getSharedPreferences$android_release()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->isConsentRequired()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Lio/didomi/sdk/h3;->a(Landroid/content/SharedPreferences;Z)V

    iget-boolean v0, p1, Lio/didomi/sdk/Didomi;->requestResetAtInitialize:Z

    if-eqz v0, :cond_7b

    invoke-direct {p1}, Lio/didomi/sdk/Didomi;->resetComponents()V

    :cond_7b
    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object v0

    iget-boolean p0, p0, Lio/didomi/sdk/DidomiInitializeParameters;->isUnderage:Z

    invoke-virtual {v0, p0}, Lio/didomi/sdk/P3;->a(Z)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p0, v0}, Lio/didomi/sdk/Didomi;->sync$android_release$default(Lio/didomi/sdk/Didomi;ZLandroidx/fragment/app/FragmentActivity;ILjava/lang/Object;)Z

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object p0

    new-instance v0, Lio/didomi/sdk/events/ReadyEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/ReadyEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    const-string p0, "SDK is ready!"

    invoke-virtual {v2, p0}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lio/didomi/sdk/Didomi;->preparePageViewEvent(Landroid/app/Application;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_9d} :catch_9e
    .catchall {:try_start_65 .. :try_end_9d} :catchall_af

    goto :goto_ab

    :catch_9e
    move-exception p0

    :try_start_9f
    const-string p1, "Unable to initialize the SDK"

    invoke-static {p1, p0}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string p1, "SDK encountered an error"

    invoke-virtual {p0, p1}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    :goto_ab
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_ad
    .catchall {:try_start_9f .. :try_end_ad} :catchall_af

    monitor-exit v3

    return-void

    :catchall_af
    move-exception p0

    monitor-exit v3

    throw p0

    :catch_b2
    move-exception p0

    const-string p2, "Unable to initialize the SDK"

    invoke-static {p2, p0}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v2, "SDK encountered an error"

    invoke-virtual {p2, v2}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->ready$android_release()Z

    move-result p2

    if-nez p2, :cond_e3

    iget-object p2, p1, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_c8
    iput-boolean v0, p1, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    iput-boolean v1, p1, Lio/didomi/sdk/Didomi;->isError:Z

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object p1

    new-instance v0, Lio/didomi/sdk/events/ErrorEvent;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/didomi/sdk/events/ErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_de
    .catchall {:try_start_c8 .. :try_end_de} :catchall_e0

    monitor-exit p2

    goto :goto_e3

    :catchall_e0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_e3
    :goto_e3
    return-void
.end method

.method public static synthetic isConsentRequired$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isUserConsentStatusPartial$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic isUserLegitimateInterestStatusPartial$annotations()V
    .registers 0

    return-void
.end method

.method private final preparePageViewEvent(Landroid/app/Application;)V
    .registers 4

    sget-object v0, Lio/didomi/sdk/m;->a:Lio/didomi/sdk/m;

    new-instance v1, Lio/didomi/sdk/Didomi$g;

    invoke-direct {v1, p0}, Lio/didomi/sdk/Didomi$g;-><init>(Lio/didomi/sdk/Didomi;)V

    invoke-virtual {v0, p1, v1}, Lio/didomi/sdk/m;->a(Landroid/app/Application;Lio/didomi/sdk/m$a;)V

    return-void
.end method

.method private final registerVendorStatusListener(Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getCurrentUserStatus()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/models/CurrentUserStatus;->getVendors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/didomi/sdk/V;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, v2

    goto :goto_26

    :cond_1e
    invoke-virtual {v0}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_26
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v4

    invoke-virtual {v0}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3, p2}, Lio/didomi/sdk/M2;->a(Ljava/lang/String;Ljava/lang/Boolean;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)Z

    move-result p2

    if-nez p2, :cond_67

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener for vendor with id \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not added"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v1, v2}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_67

    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vendor with id \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v1, v2}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_67
    :goto_67
    return-void
.end method

.method private static final removeVendorStatusListener$lambda$10(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/didomi/sdk/M2;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private final resetComponents()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->m()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserChoicesInfoProvider$android_release()Lio/didomi/sdk/G8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->j()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserRepository$android_release()Lio/didomi/sdk/M8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/M8;->e()Ljava/lang/String;

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUiStateRepository$android_release()Lio/didomi/sdk/E8;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/E8;->a(Z)V

    iput-boolean v1, p0, Lio/didomi/sdk/Didomi;->requestResetAtInitialize:Z

    return-void
.end method

.method public static synthetic setUser$default(Lio/didomi/sdk/Didomi;Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/Didomi;->setUser(Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic setUser$default(Lio/didomi/sdk/Didomi;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/Didomi;->setUser(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final setupUIOnSyncDone(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    new-instance v0, Lio/didomi/sdk/Didomi$h;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/Didomi$h;-><init>(Lio/didomi/sdk/Didomi;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/Didomi;->addEventListener(Lio/didomi/sdk/events/EventListener;)V

    return-void
.end method

.method public static synthetic showPreferences$default(Lio/didomi/sdk/Didomi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/Didomi;->showPreferences(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sync$android_release$default(Lio/didomi/sdk/Didomi;ZLandroidx/fragment/app/FragmentActivity;ILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/Didomi;->sync$android_release(ZLandroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    return p0
.end method

.method private final syncIfRequired(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->ready$android_release()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/didomi/sdk/Didomi;->sync$android_release(ZLandroidx/fragment/app/FragmentActivity;)Z

    :cond_a
    return-void
.end method

.method static synthetic syncIfRequired$default(Lio/didomi/sdk/Didomi;Landroidx/fragment/app/FragmentActivity;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lio/didomi/sdk/Didomi;->syncIfRequired(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private static final updateSelectedLanguage$lambda$13(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$languageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getLanguagesHelper()Lio/didomi/sdk/v3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/v3;->g(Ljava/lang/String;)Lio/didomi/sdk/u3;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/Didomi$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "Language code "

    const/4 v2, 0x1

    if-eq v0, v2, :cond_61

    const/4 v2, 0x2

    if-eq v0, v2, :cond_47

    const/4 p1, 0x3

    if-ne v0, p1, :cond_41

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getPurposesTranslationsRepository$android_release()Lio/didomi/sdk/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/Z4;->d()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/V8;->z()V

    new-instance p1, Lio/didomi/sdk/events/LanguageUpdatedEvent;

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getLanguagesHelper()Lio/didomi/sdk/v3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/didomi/sdk/events/LanguageUpdatedEvent;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :cond_41
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_47
    new-instance v0, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not enabled in the SDK"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_61
    new-instance v0, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/events/LanguageUpdateFailedEvent;-><init>(Ljava/lang/String;)V

    :goto_7a
    move-object p1, v0

    :goto_7b
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    return-void
.end method


# virtual methods
.method public final addEventListener(Lio/didomi/sdk/events/EventListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z

    return-void
.end method

.method public final addEventListener(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z

    return-void
.end method

.method public final addVendorStatusListener(Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V
    .registers 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isReady:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/Didomi;->registerVendorStatusListener(Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    goto :goto_1a

    :cond_12
    new-instance v0, Lio/didomi/sdk/z9;

    invoke-direct {v0, p0, p1, p2}, Lio/didomi/sdk/z9;-><init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/Didomi;->onReady(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V

    :goto_1a
    return-void
.end method

.method public final clearUser()V
    .registers 19

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/P3;->a()V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getUserRepository$android_release()Lio/didomi/sdk/M8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/M8;->e()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lio/didomi/sdk/V;->a(Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getApiEventsRepository()Lio/didomi/sdk/apiEvents/b;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "external"

    const/16 v16, 0xff

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Lio/didomi/sdk/V;->a(Lio/didomi/sdk/V;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;ILjava/lang/Object;)V

    return-void
.end method

.method public final forceShowNotice(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getNavigationManager$android_release()Lio/didomi/sdk/I3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final getApiEventsRepository()Lio/didomi/sdk/apiEvents/b;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->apiEventsRepository:Lio/didomi/sdk/apiEvents/b;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "apiEventsRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getComponent$android_release()Lio/didomi/sdk/J0;
    .registers 4

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isReady:Z

    if-nez v0, :cond_b

    const/4 v0, 0x2

    const-string v1, "Injection Component requested while Didomi is not initialized!"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lio/didomi/sdk/Didomi;->componentProvider:Lio/didomi/sdk/K0;

    invoke-virtual {v0}, Lio/didomi/sdk/K0;->a()Lio/didomi/sdk/J0;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigurationRepository()Lio/didomi/sdk/H;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->configurationRepository:Lio/didomi/sdk/H;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "configurationRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConnectivityHelper$android_release()Lio/didomi/sdk/J;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->connectivityHelper:Lio/didomi/sdk/J;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "connectivityHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConsentRepository$android_release()Lio/didomi/sdk/V;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->consentRepository:Lio/didomi/sdk/V;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "consentRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContextHelper$android_release()Lio/didomi/sdk/Z;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->contextHelper:Lio/didomi/sdk/Z;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "contextHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentUserStatus()Lio/didomi/sdk/models/CurrentUserStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/P8;->b()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceType()Lio/didomi/sdk/E0;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Z;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lio/didomi/sdk/E0;->b:Lio/didomi/sdk/E0;

    goto :goto_12

    :cond_10
    sget-object v0, Lio/didomi/sdk/E0;->a:Lio/didomi/sdk/E0;

    :goto_12
    return-object v0
.end method

.method public final getEventsRepository$android_release()Lio/didomi/sdk/M2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->eventsRepository$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/M2;

    return-object v0
.end method

.method public final getHasAnyStatus()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->h()Z

    move-result v0

    return v0
.end method

.method public final getHttpRequestHelper$android_release()Lio/didomi/sdk/Z2;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->httpRequestHelper:Lio/didomi/sdk/Z2;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "httpRequestHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIabStorageRepository$android_release()Lio/didomi/sdk/h3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->iabStorageRepository:Lio/didomi/sdk/h3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "iabStorageRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIabVendorCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->b()I

    move-result v0

    return v0
.end method

.method public final getJavaScriptForWebView()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lio/didomi/sdk/Didomi;->getJavaScriptForWebView$default(Lio/didomi/sdk/Didomi;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaScriptForWebView(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    sget-object v0, Lio/didomi/sdk/m9;->a:Lio/didomi/sdk/m9;

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserRepository$android_release()Lio/didomi/sdk/M8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/didomi/sdk/m9;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLanguagesHelper()Lio/didomi/sdk/v3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->languagesHelper:Lio/didomi/sdk/v3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "languagesHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNavigationManager$android_release()Lio/didomi/sdk/I3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->navigationManager:Lio/didomi/sdk/I3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNonIabVendorCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->c()I

    move-result v0

    return v0
.end method

.method public final getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->organizationUserRepository$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/P3;

    return-object v0
.end method

.method public final getPurpose(Ljava/lang/String;)Lio/didomi/sdk/Purpose;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Lio/didomi/sdk/p3;->b(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/Purpose;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method public final getPurposesTranslationsRepository$android_release()Lio/didomi/sdk/Z4;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->purposesTranslationsRepository:Lio/didomi/sdk/Z4;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "purposesTranslationsRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getQueryStringForWebView()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    sget-object v0, Lio/didomi/sdk/m9;->a:Lio/didomi/sdk/m9;

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserRepository$android_release()Lio/didomi/sdk/M8;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/sdk/m9;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteFilesHelper$android_release()Lio/didomi/sdk/l5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->remoteFilesHelper:Lio/didomi/sdk/l5;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "remoteFilesHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequiredPurposeIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRequiredPurposes()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/Purpose;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->k()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v2}, Lio/didomi/sdk/p3;->b(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/Purpose;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRequiredVendorIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->s()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRequiredVendors()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/Vendor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v2}, Lio/didomi/sdk/q3;->j(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/Vendor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getResourcesHelper$android_release()Lio/didomi/sdk/s5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->resourcesHelper:Lio/didomi/sdk/s5;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "resourcesHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSharedPreferences$android_release()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "sharedPreferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSyncRepository$android_release()Lio/didomi/sdk/c6;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->syncRepository:Lio/didomi/sdk/c6;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "syncRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getText(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getLanguagesHelper()Lio/didomi/sdk/v3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/v3;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getTotalVendorCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->v()I

    move-result v0

    return v0
.end method

.method public final getTranslatedText(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getLanguagesHelper()Lio/didomi/sdk/v3;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getUiProvider$android_release()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->uiProvider:Lio/didomi/sdk/D8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUiStateRepository$android_release()Lio/didomi/sdk/E8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->uiStateRepository:Lio/didomi/sdk/E8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "uiStateRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserAgentRepository$android_release()Lio/didomi/sdk/F8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->userAgentRepository$delegate:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/F8;

    return-object v0
.end method

.method public final getUserChoicesInfoProvider$android_release()Lio/didomi/sdk/G8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->userChoicesInfoProvider:Lio/didomi/sdk/G8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "userChoicesInfoProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserRepository$android_release()Lio/didomi/sdk/M8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->userRepository:Lio/didomi/sdk/M8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "userRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserStatus()Lio/didomi/sdk/models/UserStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/P8;->d()Lio/didomi/sdk/models/UserStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getUserStatusRepository$android_release()Lio/didomi/sdk/P8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->userStatusRepository:Lio/didomi/sdk/P8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "userStatusRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVendor(Ljava/lang/String;)Lio/didomi/sdk/Vendor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const-string v0, "vendorId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->g(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Lio/didomi/sdk/q3;->j(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/Vendor;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method public final getVendorRepository$android_release()Lio/didomi/sdk/V8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->vendorRepository:Lio/didomi/sdk/V8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "vendorRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hideNotice()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getNavigationManager$android_release()Lio/didomi/sdk/I3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->a()V

    return-void
.end method

.method public final hidePreferences()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getNavigationManager$android_release()Lio/didomi/sdk/I3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    return-void
.end method

.method public final initialize(Landroid/app/Application;Lio/didomi/sdk/DidomiInitializeParameters;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-boolean v1, p0, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    const-string p1, "Not initializing the SDK as an initialization is already in progress."

    invoke-static {p1, v3, v2, v3}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_4e

    monitor-exit v0

    return-void

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->ready$android_release()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->isNoticeVisible()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->isPreferencesVisible()Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_2c
    const-string p1, "Not initializing the SDK as UI is already displayed. Close all UI elements before initializing again."

    invoke-static {p1, v3, v2, v3}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_4e

    monitor-exit v0

    return-void

    :cond_33
    const/4 v1, 0x0

    :try_start_34
    iput-boolean v1, p0, Lio/didomi/sdk/Didomi;->isError:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4e

    monitor-exit v0

    sget-object v0, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    invoke-static {v0, v3, v1, v3}, Lio/didomi/sdk/B8;->a(Lio/didomi/sdk/B8;Ljava/lang/String;ILjava/lang/Object;)V

    iput-boolean v1, p0, Lio/didomi/sdk/Didomi;->isInitialized:Z

    sget-object v0, Lio/didomi/sdk/M0;->a:Lio/didomi/sdk/M0;

    new-instance v1, Lio/didomi/sdk/y9;

    invoke-direct {v1, p2, p0, p1}, Lio/didomi/sdk/y9;-><init>(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/M0;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final isConsentRequired()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConfigurationRepository()Lio/didomi/sdk/H;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/I;->b(Lio/didomi/sdk/H;)Z

    move-result v0

    return v0
.end method

.method public final isError()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isError:Z

    return v0
.end method

.method public final isInitializeInProgress$android_release()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isInitialized:Z

    return v0
.end method

.method public final isNoticeVisible()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUiProvider$android_release()Lio/didomi/sdk/D8;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/D8;->b()Z

    move-result v0

    return v0
.end method

.method public final isPreferencesVisible()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUiProvider$android_release()Lio/didomi/sdk/D8;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/D8;->c()Z

    move-result v0

    return v0
.end method

.method public final isReady()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isReady:Z

    return v0
.end method

.method public final isUserConsentStatusPartial()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->i()Z

    move-result v0

    return v0
.end method

.method public final isUserLegitimateInterestStatusPartial()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->j()Z

    move-result v0

    return v0
.end method

.method public final isUserStatusPartial()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->k()Z

    move-result v0

    return v0
.end method

.method public final onError(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lio/didomi/sdk/Didomi;->isError:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_21

    :cond_14
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/Didomi$d;

    invoke-direct {v2, p1}, Lio/didomi/sdk/Didomi$d;-><init>(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_28

    const/4 v1, 0x0

    :goto_21
    monitor-exit v0

    if-eqz v1, :cond_27

    invoke-interface {p1}, Lio/didomi/sdk/functionalinterfaces/DidomiCallable;->call()V

    :cond_27
    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onReady(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->ready$android_release()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_23

    :cond_16
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v1

    new-instance v2, Lio/didomi/sdk/Didomi$e;

    invoke-direct {v2, p1}, Lio/didomi/sdk/Didomi$e;-><init>(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/M2;->a(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    const/4 v1, 0x0

    :goto_23
    monitor-exit v0

    if-eqz v1, :cond_29

    invoke-interface {p1}, Lio/didomi/sdk/functionalinterfaces/DidomiCallable;->call()V

    :cond_29
    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final openCurrentUserStatusTransaction()Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    new-instance v0, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getVendorRepository$android_release()Lio/didomi/sdk/V8;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/consent/CurrentUserStatusTransaction;-><init>(Lio/didomi/sdk/P8;Lio/didomi/sdk/V8;)V

    return-object v0
.end method

.method public final openCurrentUserTransaction()Lio/didomi/sdk/consent/CurrentUserStatusTransaction;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->openCurrentUserStatusTransaction()Lio/didomi/sdk/consent/CurrentUserStatusTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final ready$android_release()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isReady:Z

    return v0
.end method

.method public final readyOrThrow$android_release()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->ready$android_release()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lio/didomi/sdk/exceptions/DidomiNotReadyException;

    invoke-direct {v0}, Lio/didomi/sdk/exceptions/DidomiNotReadyException;-><init>()V

    throw v0
.end method

.method public final removeEventListener(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->b(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)Z

    return-void
.end method

.method public final removeVendorStatusListener(Ljava/lang/String;)V
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/didomi/sdk/Didomi;->isReady:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->a(Ljava/lang/String;)Z

    goto :goto_19

    :cond_11
    new-instance v0, Lio/didomi/sdk/ba;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/ba;-><init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/Didomi;->onReady(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V

    :goto_19
    return-void
.end method

.method public final reset()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Didomi;->initializationEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lio/didomi/sdk/Didomi;->isReady:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lio/didomi/sdk/Didomi;->resetComponents()V

    goto :goto_e

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/didomi/sdk/Didomi;->requestResetAtInitialize:Z

    :goto_e
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setApiEventsRepository(Lio/didomi/sdk/apiEvents/b;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->apiEventsRepository:Lio/didomi/sdk/apiEvents/b;

    return-void
.end method

.method public final setConfigurationRepository(Lio/didomi/sdk/H;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->configurationRepository:Lio/didomi/sdk/H;

    return-void
.end method

.method public final setConnectivityHelper$android_release(Lio/didomi/sdk/J;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->connectivityHelper:Lio/didomi/sdk/J;

    return-void
.end method

.method public final setConsentRepository$android_release(Lio/didomi/sdk/V;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->consentRepository:Lio/didomi/sdk/V;

    return-void
.end method

.method public final setContextHelper$android_release(Lio/didomi/sdk/Z;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->contextHelper:Lio/didomi/sdk/Z;

    return-void
.end method

.method public final setCurrentUserStatus(Lio/didomi/sdk/models/CurrentUserStatus;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const-string v0, "currentUserStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/P8;->a(Lio/didomi/sdk/models/CurrentUserStatus;)Z

    move-result p1

    return p1
.end method

.method public final setHttpRequestHelper$android_release(Lio/didomi/sdk/Z2;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->httpRequestHelper:Lio/didomi/sdk/Z2;

    return-void
.end method

.method public final setIabStorageRepository$android_release(Lio/didomi/sdk/h3;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->iabStorageRepository:Lio/didomi/sdk/h3;

    return-void
.end method

.method public final setInitializeInProgress$android_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/Didomi;->isInitializeInProgress:Z

    return-void
.end method

.method public final setLanguagesHelper(Lio/didomi/sdk/v3;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->languagesHelper:Lio/didomi/sdk/v3;

    return-void
.end method

.method public final setLocalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/Didomi;->getLocalPropertiesRepository()Lio/didomi/sdk/z3;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/z3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLogLevel(I)V
    .registers 2

    invoke-static {p1}, Lio/didomi/sdk/Log;->setLevel(I)V

    return-void
.end method

.method public final setNavigationManager$android_release(Lio/didomi/sdk/I3;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->navigationManager:Lio/didomi/sdk/I3;

    return-void
.end method

.method public final setPurposesTranslationsRepository$android_release(Lio/didomi/sdk/Z4;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->purposesTranslationsRepository:Lio/didomi/sdk/Z4;

    return-void
.end method

.method public final setRemoteFilesHelper$android_release(Lio/didomi/sdk/l5;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->remoteFilesHelper:Lio/didomi/sdk/l5;

    return-void
.end method

.method public final setResourcesHelper$android_release(Lio/didomi/sdk/s5;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->resourcesHelper:Lio/didomi/sdk/s5;

    return-void
.end method

.method public final setSharedPreferences$android_release(Landroid/content/SharedPreferences;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final setSyncRepository$android_release(Lio/didomi/sdk/c6;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->syncRepository:Lio/didomi/sdk/c6;

    return-void
.end method

.method public final setUiProvider$android_release(Lio/didomi/sdk/D8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->uiProvider:Lio/didomi/sdk/D8;

    return-void
.end method

.method public final setUiStateRepository$android_release(Lio/didomi/sdk/E8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->uiStateRepository:Lio/didomi/sdk/E8;

    return-void
.end method

.method public final setUser(Lio/didomi/sdk/user/UserAuthParams;)V
    .registers 10

    const-string v0, "userAuthParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/Didomi;->setUser$default(Lio/didomi/sdk/Didomi;Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUser(Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/UserAuthParams;",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/user/UserAuthParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userAuthParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/Didomi;->setUser$default(Lio/didomi/sdk/Didomi;Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUser(Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/UserAuthParams;",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/user/UserAuthParams;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    const-string v0, "userAuthParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/Didomi;->setUser$default(Lio/didomi/sdk/Didomi;Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUser(Lio/didomi/sdk/user/UserAuthParams;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/user/UserAuthParams;",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/user/UserAuthParams;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "userAuthParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/P3;->a(Lio/didomi/sdk/user/UserAuth;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/didomi/sdk/P3;->a(Ljava/util/List;)V

    if-eqz p4, :cond_20

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/didomi/sdk/P3;->a(Z)V

    :cond_20
    invoke-direct {p0, p3}, Lio/didomi/sdk/Didomi;->syncIfRequired(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final setUser(Ljava/lang/String;)V
    .registers 9

    const-string v0, "organizationUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/Didomi;->setUser$default(Lio/didomi/sdk/Didomi;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUser(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .registers 10

    const-string v0, "organizationUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/Didomi;->setUser$default(Lio/didomi/sdk/Didomi;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUser(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/Boolean;)V
    .registers 6

    const-string v0, "organizationUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/user/UserAuthWithoutParams;

    invoke-direct {v1, p1}, Lio/didomi/sdk/user/UserAuthWithoutParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/P3;->a(Lio/didomi/sdk/user/UserAuth;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/didomi/sdk/P3;->a(Ljava/util/List;)V

    if-eqz p3, :cond_26

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getOrganizationUserRepository$android_release()Lio/didomi/sdk/P3;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lio/didomi/sdk/P3;->a(Z)V

    :cond_26
    invoke-direct {p0, p2}, Lio/didomi/sdk/Didomi;->syncIfRequired(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserAgentRepository$android_release()Lio/didomi/sdk/F8;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/F8;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUserAgreeToAll()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0, v0}, Lio/didomi/sdk/Didomi;->setUserStatus(ZZZZ)Z

    move-result v0

    return v0
.end method

.method public final setUserChoicesInfoProvider$android_release(Lio/didomi/sdk/G8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->userChoicesInfoProvider:Lio/didomi/sdk/G8;

    return-void
.end method

.method public final setUserDisagreeToAll()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lio/didomi/sdk/Didomi;->setUserStatus(ZZZZ)Z

    move-result v0

    return v0
.end method

.method public final setUserRepository$android_release(Lio/didomi/sdk/M8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->userRepository:Lio/didomi/sdk/M8;

    return-void
.end method

.method public final setUserStatus(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    new-instance v12, Lio/didomi/sdk/O8;

    const/4 v10, 0x1

    const-string v11, "external"

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lio/didomi/sdk/O8;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getApiEventsRepository()Lio/didomi/sdk/apiEvents/b;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v3

    invoke-virtual {v0, v12, v1, v2, v3}, Lio/didomi/sdk/V;->a(Lio/didomi/sdk/O8;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    move-result v0

    return v0
.end method

.method public final setUserStatus(ZZZZ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getApiEventsRepository()Lio/didomi/sdk/apiEvents/b;

    move-result-object v6

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getEventsRepository$android_release()Lio/didomi/sdk/M2;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getUserStatusRepository$android_release()Lio/didomi/sdk/P8;

    move-result-object v8

    const-string v5, "external"

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lio/didomi/sdk/V;->a(ZZZZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    move-result p1

    return p1
.end method

.method public final setUserStatusRepository$android_release(Lio/didomi/sdk/P8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->userStatusRepository:Lio/didomi/sdk/P8;

    return-void
.end method

.method public final setVendorRepository$android_release(Lio/didomi/sdk/V8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/Didomi;->vendorRepository:Lio/didomi/sdk/V8;

    return-void
.end method

.method public final setupUI(Landroidx/fragment/app/FragmentActivity;)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_a

    const-string p1, "Activity passed to setupUI is null"

    invoke-static {p1, v1, v0, v1}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "IMPORTANT: you are calling the setupUI method from a thread other than the main thread. This method must be called from the main thread to prevent unexpected issues."

    invoke-static {v2, v1, v0, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lio/didomi/sdk/Didomi;->lifecycleHandler:Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/lifecycle/DidomiLifecycleHandler;->b(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final shouldConsentBeCollected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->q()Z

    move-result v0

    return v0
.end method

.method public final shouldUserStatusBeCollected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->q()Z

    move-result v0

    return v0
.end method

.method public final showNotice(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getNavigationManager$android_release()Lio/didomi/sdk/I3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/I3;->b(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final showPreferences(Landroidx/fragment/app/FragmentActivity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lio/didomi/sdk/Didomi;->showPreferences$default(Lio/didomi/sdk/Didomi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final showPreferences(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getConfigurationRepository()Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    if-ne v0, v1, :cond_17

    const/4 p1, 0x2

    const-string p2, "User consent is not required, preferences will not be shown"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_17
    const-string v0, "vendors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object p2, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    goto :goto_2f

    :cond_22
    const-string v0, "sensitive-personal-information"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    sget-object p2, Lio/didomi/sdk/Y5;->b:Lio/didomi/sdk/Y5;

    goto :goto_2f

    :cond_2d
    sget-object p2, Lio/didomi/sdk/Y5;->c:Lio/didomi/sdk/Y5;

    :goto_2f
    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->getNavigationManager$android_release()Lio/didomi/sdk/I3;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/I3;->a(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V

    return-void
.end method

.method public final sync$android_release(ZLandroidx/fragment/app/FragmentActivity;)Z
    .registers 24

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getSyncRepository$android_release()Lio/didomi/sdk/c6;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/c6;->a()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->handleOrganizationUserChange()Z

    move-result v1

    new-instance v4, Lio/didomi/sdk/b6;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConfigurationRepository()Lio/didomi/sdk/H;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k;->h()Lio/didomi/sdk/config/app/SyncConfiguration;

    move-result-object v3

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto :goto_2e

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/consent/model/ConsentToken;->getLastSyncDate()Ljava/util/Date;

    move-result-object v1

    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Z;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getUserAgentRepository$android_release()Lio/didomi/sdk/F8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/F8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConfigurationRepository()Lio/didomi/sdk/H;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/H;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Z;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Z;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getContextHelper$android_release()Lio/didomi/sdk/Z;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Z;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getUserRepository$android_release()Lio/didomi/sdk/M8;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/consent/model/ConsentToken;->getCreated()Ljava/util/Date;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v13

    new-instance v2, Lio/didomi/sdk/consent/model/ConsentChoices;

    move-object v14, v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v15

    invoke-virtual {v15}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v15

    invoke-static {v15}, Lio/didomi/sdk/Y;->h(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v15, v0}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v0, Lio/didomi/sdk/consent/model/ConsentChoices;

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-static {v2}, Lio/didomi/sdk/Y;->f(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v16

    move-object/from16 v20, v5

    invoke-static/range {v16 .. v16}, Lio/didomi/sdk/Y;->b(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v0, Lio/didomi/sdk/consent/model/ConsentChoices;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-static {v2}, Lio/didomi/sdk/Y;->i(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v5

    invoke-virtual {v5}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v5

    invoke-static {v5}, Lio/didomi/sdk/Y;->e(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v0, Lio/didomi/sdk/consent/model/ConsentChoices;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v2

    invoke-static {v2}, Lio/didomi/sdk/Y;->g(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v5

    invoke-virtual {v5}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v5

    invoke-static {v5}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lio/didomi/sdk/consent/model/ConsentChoices;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getConsentRepository$android_release()Lio/didomi/sdk/V;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V;->g()Ljava/lang/Integer;

    move-result-object v19

    move-object v2, v4

    move-object v0, v4

    move-object v4, v1

    move-object/from16 v5, v20

    invoke-direct/range {v2 .. v19}, Lio/didomi/sdk/b6;-><init>(Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    if-eqz v1, :cond_11b

    invoke-direct {v2, v1}, Lio/didomi/sdk/Didomi;->setupUIOnSyncDone(Landroidx/fragment/app/FragmentActivity;)V

    :cond_11b
    if-eqz p1, :cond_125

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getSyncRepository$android_release()Lio/didomi/sdk/c6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/didomi/sdk/c6;->a(Lio/didomi/sdk/b6;)V

    goto :goto_12c

    :cond_125
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/Didomi;->getSyncRepository$android_release()Lio/didomi/sdk/c6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/b6;)V

    :goto_12c
    const/4 v0, 0x1

    goto :goto_131

    :cond_12e
    move-object/from16 v2, p0

    const/4 v0, 0x0

    :goto_131
    return v0
.end method

.method public final updateSelectedLanguage(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/didomi/sdk/exceptions/DidomiNotReadyException;
        }
    .end annotation

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi;->readyOrThrow$android_release()V

    sget-object v0, Lio/didomi/sdk/M0;->a:Lio/didomi/sdk/M0;

    new-instance v1, Lio/didomi/sdk/aa;

    invoke-direct {v1, p0, p1}, Lio/didomi/sdk/aa;-><init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/M0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.didomi.sdk.Didomi.Companion (io.didomi.sdk.Didomi$Companion)
.class public final Lio/didomi/sdk/Didomi$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/Didomi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/Didomi$Companion;",
        "",
        "()V",
        "VIEW_PURPOSES",
        "",
        "VIEW_SENSITIVE_PERSONAL_INFORMATION",
        "VIEW_VENDORS",
        "currentInstance",
        "Lio/didomi/sdk/Didomi;",
        "clearInstance",
        "",
        "getInstance",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/Didomi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearInstance()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lio/didomi/sdk/Didomi;->access$setCurrentInstance$cp(Lio/didomi/sdk/Didomi;)V

    return-void
.end method

.method public final getInstance()Lio/didomi/sdk/Didomi;
    .registers 3

    invoke-static {}, Lio/didomi/sdk/Didomi;->access$getCurrentInstance$cp()Lio/didomi/sdk/Didomi;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lio/didomi/sdk/Didomi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/Didomi;-><init>(Lkotlin/jvm/internal/n;)V

    invoke-static {v0}, Lio/didomi/sdk/Didomi;->access$setCurrentInstance$cp(Lio/didomi/sdk/Didomi;)V

    :cond_f
    invoke-static {}, Lio/didomi/sdk/Didomi;->access$getCurrentInstance$cp()Lio/didomi/sdk/Didomi;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.didomi.sdk.Didomi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class io.didomi.sdk.Didomi.a (io.didomi.sdk.Didomi$a)
.class public final synthetic Lio/didomi/sdk/Didomi$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/Didomi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/u3;->values()[Lio/didomi/sdk/u3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/u3;->a:Lio/didomi/sdk/u3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/u3;->b:Lio/didomi/sdk/u3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/didomi/sdk/u3;->c:Lio/didomi/sdk/u3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/didomi/sdk/Didomi$a;->a:[I

    return-void
.end method

###### Class io.didomi.sdk.Didomi.b (io.didomi.sdk.Didomi$b)
.class final Lio/didomi/sdk/Didomi$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/M2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/M2;",
        "a",
        "()Lio/didomi/sdk/M2;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/Didomi$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/Didomi$b;

    invoke-direct {v0}, Lio/didomi/sdk/Didomi$b;-><init>()V

    sput-object v0, Lio/didomi/sdk/Didomi$b;->a:Lio/didomi/sdk/Didomi$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/M2;
    .registers 4

    new-instance v0, Lio/didomi/sdk/M2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/didomi/sdk/M2;-><init>(Landroid/os/Handler;ILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi$b;->a()Lio/didomi/sdk/M2;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.Didomi.c (io.didomi.sdk.Didomi$c)
.class final Lio/didomi/sdk/Didomi$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/z3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/z3;",
        "a",
        "()Lio/didomi/sdk/z3;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/Didomi$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/Didomi$c;

    invoke-direct {v0}, Lio/didomi/sdk/Didomi$c;-><init>()V

    sput-object v0, Lio/didomi/sdk/Didomi$c;->a:Lio/didomi/sdk/Didomi$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/z3;
    .registers 2

    new-instance v0, Lio/didomi/sdk/z3;

    invoke-direct {v0}, Lio/didomi/sdk/z3;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi$c;->a()Lio/didomi/sdk/z3;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.Didomi.d (io.didomi.sdk.Didomi$d)
.class public final Lio/didomi/sdk/Didomi$d;
.super Lio/didomi/sdk/events/InitializationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;->onError(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "io/didomi/sdk/Didomi$d",
        "Lio/didomi/sdk/events/InitializationEventListener;",
        "Lio/didomi/sdk/events/ErrorEvent;",
        "event",
        "",
        "error",
        "(Lio/didomi/sdk/events/ErrorEvent;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# direct methods
.method constructor <init>(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Didomi$d;->a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;

    invoke-direct {p0}, Lio/didomi/sdk/events/InitializationEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lio/didomi/sdk/events/ErrorEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object p1, p0, Lio/didomi/sdk/Didomi$d;->a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;

    invoke-interface {p1}, Lio/didomi/sdk/functionalinterfaces/DidomiCallable;->call()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method

###### Class io.didomi.sdk.Didomi.e (io.didomi.sdk.Didomi$e)
.class public final Lio/didomi/sdk/Didomi$e;
.super Lio/didomi/sdk/events/InitializationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;->onReady(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "io/didomi/sdk/Didomi$e",
        "Lio/didomi/sdk/events/InitializationEventListener;",
        "Lio/didomi/sdk/events/ReadyEvent;",
        "event",
        "",
        "ready",
        "(Lio/didomi/sdk/events/ReadyEvent;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# direct methods
.method constructor <init>(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Didomi$e;->a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;

    invoke-direct {p0}, Lio/didomi/sdk/events/InitializationEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lio/didomi/sdk/events/ReadyEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object p1, p0, Lio/didomi/sdk/Didomi$e;->a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;

    invoke-interface {p1}, Lio/didomi/sdk/functionalinterfaces/DidomiCallable;->call()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method

###### Class io.didomi.sdk.Didomi.f (io.didomi.sdk.Didomi$f)
.class final Lio/didomi/sdk/Didomi$f;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/P3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/P3;",
        "a",
        "()Lio/didomi/sdk/P3;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/Didomi$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/Didomi$f;

    invoke-direct {v0}, Lio/didomi/sdk/Didomi$f;-><init>()V

    sput-object v0, Lio/didomi/sdk/Didomi$f;->a:Lio/didomi/sdk/Didomi$f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/P3;
    .registers 2

    new-instance v0, Lio/didomi/sdk/P3;

    invoke-direct {v0}, Lio/didomi/sdk/P3;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi$f;->a()Lio/didomi/sdk/P3;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.Didomi.g (io.didomi.sdk.Didomi$g)
.class public final Lio/didomi/sdk/Didomi$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;->preparePageViewEvent(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "io/didomi/sdk/Didomi$g",
        "Lio/didomi/sdk/m$a;",
        "",
        "a",
        "()V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Didomi;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Didomi;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Didomi$g;->a:Lio/didomi/sdk/Didomi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Didomi$g;->a:Lio/didomi/sdk/Didomi;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getApiEventsRepository()Lio/didomi/sdk/apiEvents/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->f()V

    return-void
.end method

###### Class io.didomi.sdk.Didomi.h (io.didomi.sdk.Didomi$h)
.class public final Lio/didomi/sdk/Didomi$h;
.super Lio/didomi/sdk/events/EventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;->setupUIOnSyncDone(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "io/didomi/sdk/Didomi$h",
        "Lio/didomi/sdk/events/EventListener;",
        "Lio/didomi/sdk/events/SyncDoneEvent;",
        "event",
        "",
        "syncDone",
        "(Lio/didomi/sdk/events/SyncDoneEvent;)V",
        "Lio/didomi/sdk/events/SyncErrorEvent;",
        "syncError",
        "(Lio/didomi/sdk/events/SyncErrorEvent;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Didomi;

.field final synthetic b:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Didomi;Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/Didomi$h;->a:Lio/didomi/sdk/Didomi;

    iput-object p2, p0, Lio/didomi/sdk/Didomi$h;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Lio/didomi/sdk/events/EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public syncDone(Lio/didomi/sdk/events/SyncDoneEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/Didomi$h;->a:Lio/didomi/sdk/Didomi;

    invoke-virtual {p1, p0}, Lio/didomi/sdk/Didomi;->removeEventListener(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)V

    iget-object p1, p0, Lio/didomi/sdk/Didomi$h;->a:Lio/didomi/sdk/Didomi;

    iget-object v0, p0, Lio/didomi/sdk/Didomi$h;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lio/didomi/sdk/Didomi;->setupUI(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public syncError(Lio/didomi/sdk/events/SyncErrorEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/Didomi$h;->a:Lio/didomi/sdk/Didomi;

    invoke-virtual {p1, p0}, Lio/didomi/sdk/Didomi;->removeEventListener(Lio/didomi/sdk/functionalinterfaces/DidomiEventListener;)V

    return-void
.end method

###### Class io.didomi.sdk.Didomi.i (io.didomi.sdk.Didomi$i)
.class final Lio/didomi/sdk/Didomi$i;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/F8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/F8;",
        "a",
        "()Lio/didomi/sdk/F8;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/Didomi$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/Didomi$i;

    invoke-direct {v0}, Lio/didomi/sdk/Didomi$i;-><init>()V

    sput-object v0, Lio/didomi/sdk/Didomi$i;->a:Lio/didomi/sdk/Didomi$i;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/F8;
    .registers 2

    new-instance v0, Lio/didomi/sdk/F8;

    invoke-direct {v0}, Lio/didomi/sdk/F8;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Didomi$i;->a()Lio/didomi/sdk/F8;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.aa (io.didomi.sdk.aa)
.class public final synthetic Lio/didomi/sdk/aa;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Didomi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/aa;->a:Lio/didomi/sdk/Didomi;

    iput-object p2, p0, Lio/didomi/sdk/aa;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/aa;->a:Lio/didomi/sdk/Didomi;

    iget-object v1, p0, Lio/didomi/sdk/aa;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/didomi/sdk/Didomi;->c(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    return-void
.end method

###### Class io.didomi.drawable.ba (io.didomi.sdk.ba)
.class public final synthetic Lio/didomi/sdk/ba;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Didomi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ba;->a:Lio/didomi/sdk/Didomi;

    iput-object p2, p0, Lio/didomi/sdk/ba;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ba;->a:Lio/didomi/sdk/Didomi;

    iget-object v1, p0, Lio/didomi/sdk/ba;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/didomi/sdk/Didomi;->d(Lio/didomi/sdk/Didomi;Ljava/lang/String;)V

    return-void
.end method

###### Class io.didomi.drawable.y9 (io.didomi.sdk.y9)
.class public final synthetic Lio/didomi/sdk/y9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/DidomiInitializeParameters;

.field public final synthetic b:Lio/didomi/sdk/Didomi;

.field public final synthetic c:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/y9;->a:Lio/didomi/sdk/DidomiInitializeParameters;

    iput-object p2, p0, Lio/didomi/sdk/y9;->b:Lio/didomi/sdk/Didomi;

    iput-object p3, p0, Lio/didomi/sdk/y9;->c:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/y9;->a:Lio/didomi/sdk/DidomiInitializeParameters;

    iget-object v1, p0, Lio/didomi/sdk/y9;->b:Lio/didomi/sdk/Didomi;

    iget-object v2, p0, Lio/didomi/sdk/y9;->c:Landroid/app/Application;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/Didomi;->a(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/Didomi;Landroid/app/Application;)V

    return-void
.end method

###### Class io.didomi.drawable.z9 (io.didomi.sdk.z9)
.class public final synthetic Lio/didomi/sdk/z9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Didomi;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/z9;->a:Lio/didomi/sdk/Didomi;

    iput-object p2, p0, Lio/didomi/sdk/z9;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/z9;->c:Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;

    return-void
.end method


# virtual methods
.method public final call()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/z9;->a:Lio/didomi/sdk/Didomi;

    iget-object v1, p0, Lio/didomi/sdk/z9;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/didomi/sdk/z9;->c:Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/Didomi;->b(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    return-void
.end method
