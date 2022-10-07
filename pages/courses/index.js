import Link from 'next/link'

import styles from '../../styles/Courses.module.css'
export default function Course() {

    return (
        <div>
            <h1 className={styles.title}>Курсы</h1>
            <Link href='/course/'>
                <a className={styles.single}>
                    <h3> Первый курс</h3>
                </a>
            </Link>
            <Link href="/course/">
                <a className={styles.single}>
                    <h3> Второй курс</h3>
                </a>
            </Link>
            <Link href='/course/'>
                <a className={styles.single}>
                    <h3> Третий курс</h3>
                </a>
            </Link>
            <Link href="/course/">
                <a className={styles.single}>
                    <h3> Четвертый курс</h3>
                </a>
            </Link>
        </div>
    );

}