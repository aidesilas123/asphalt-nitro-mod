package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class PNImageHelper {
    private static Map<Long, String> a;
    private static Integer b = 604800000;
    private static Integer c = 15;

    public static String GetExternalPnFolder(Context context) {
        return SUtils.getSDFolder() + "/pn_images";
    }

    public static Bitmap LoadBitmapImageFromStorage(Context context, String str) {
        try {
            File file = new File(GetExternalPnFolder(context) + "/" + str + "/image.jpg");
            if (file.exists()) {
                return BitmapFactory.decodeStream(new FileInputStream(file));
            }
            return null;
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String SaveBitmapImageToExternalStorage(Context context, Bitmap bitmap, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th;
        String strGetExternalPnFolder = GetExternalPnFolder(context);
        File file = new File(strGetExternalPnFolder);
        if (!file.exists()) {
            file.mkdir();
        }
        String str2 = strGetExternalPnFolder + "/" + str;
        File file2 = new File(str2);
        if (!file2.exists()) {
            file2.mkdir();
        }
        boolean z = false;
        try {
            try {
                fileOutputStream = new FileOutputStream(new File(str2 + "/image.jpg"));
                try {
                    try {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                        z = true;
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        fileOutputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        } catch (Exception e5) {
            e = e5;
            fileOutputStream = null;
        } catch (Throwable th3) {
            fileOutputStream = null;
            th = th3;
            fileOutputStream.close();
            throw th;
        }
        if (z) {
            return str2;
        }
        return null;
    }

    public static void addAsset(Context context, String str, Long l) {
        removeAssetByName(str);
        a.put(l, str);
    }

    public static void checkAndRemoveExpiredResouce(Context context) {
        Map<Long, String> map = a;
        if (map == null || map.isEmpty()) {
            return;
        }
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        Iterator<Map.Entry<Long, String>> it = a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Long, String> next = it.next();
            if (next.getKey().longValue() + ((long) b.intValue()) < lValueOf.longValue()) {
                removeSavedImageFile(context, next.getValue());
                it.remove();
            }
        }
    }

    public static void checkAndRemoveIfReachLimitedResourceAmount(Context context) {
        Map<Long, String> map = a;
        if (map == null || map.isEmpty()) {
            return;
        }
        sortMapByKey();
        ArrayList arrayList = new ArrayList(a.keySet());
        Integer numValueOf = Integer.valueOf((a.size() - c.intValue()) + 1);
        for (int i = 0; i < numValueOf.intValue(); i++) {
            removeSavedImageFile(context, a.get(arrayList.get(i)));
            a.remove(arrayList.get(i));
        }
    }

    public static String getEtagAssetFromFile(Context context, String str) {
        try {
            File file = new File(GetExternalPnFolder(context) + "/" + str + "/etag.txt");
            if (!file.exists()) {
                return "0000000000";
            }
            byte[] bArr = new byte[(int) file.length()];
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr);
        } catch (Exception unused) {
            return "0000000000";
        }
    }

    public static Map<Long, String> getmTimeLog() {
        return a;
    }

    public static void loadMap(Context context) {
        String str = GetExternalPnFolder(context) + "/Time_log.txt";
        a = null;
        a = new HashMap();
        try {
            File file = new File(str);
            if (!file.exists()) {
                return;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String[] strArrSplit = line.split(",", 2);
                if (strArrSplit.length >= 2) {
                    a.put(Long.valueOf(Long.parseLong(strArrSplit[0])), strArrSplit[1]);
                }
            }
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        sortMapByKey();
    }

    public static void removeAssetByName(String str) {
        Map<Long, String> map = a;
        if (map == null || map.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<Long, String>> it = a.entrySet().iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(it.next().getValue())) {
                it.remove();
            }
        }
    }

    public static boolean removeSavedImageFile(Context context, String str) {
        File file = new File(GetExternalPnFolder(context) + "/" + str);
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return true;
            }
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
        return file.delete();
    }

    public static void saveAssetEtag(Context context, String str, String str2) {
        String str3 = GetExternalPnFolder(context) + "/" + str + "/etag.txt";
        try {
            File file = new File(str3);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
        } catch (Exception unused) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
            outputStreamWriter.write(str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
            fileOutputStream.close();
        } catch (Exception unused2) {
        }
    }

    public static void saveMap(Context context) {
        if (a == null) {
            return;
        }
        try {
            File file = new File(GetExternalPnFolder(context) + "/Time_log.txt");
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
            if (a.isEmpty()) {
                file.delete();
                return;
            }
            sortMapByKey();
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            for (Long l : a.keySet()) {
                bufferedWriter.write(l.toString() + "," + a.get(l) + "\n");
            }
            bufferedWriter.close();
        } catch (Exception unused) {
        }
    }

    public static void sortMapByKey() {
        a = new TreeMap(a);
    }
}
