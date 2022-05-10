using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace A1AksharSolanki
{
    public class HeartRates
    {
        //Class variables with Automatic properties
        public string firstName { get; set; }
        public string lastName { get; set; }
        public int yearOfBirth { get; set; }
        public int currentYear { get; set; }
        public char sex { get; set; }

        //Constructor
        public HeartRates(string firstName, string lastName, int yearOfBirth, char sex)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.yearOfBirth = yearOfBirth;
            this.sex = sex;
            this.currentYear = DateTime.Now.Year;
        }

        //Method to calculate age of the person
        public int calculateAge(int yearOfBirth)
        {
            int age;
            age = currentYear - yearOfBirth;
            return age;
        }

        //Method to calculate Maximum heart rate
        public int calculateMaxHeartRate(char sex, int yearOfBirth)
        {
            int maxHeartRate = 0;
            int age = calculateAge(yearOfBirth);
            if (sex.Equals('m'))
                maxHeartRate = 220 - age;
            else if (sex.Equals('f'))
                maxHeartRate = 226 - age;

            return maxHeartRate;
        }

        //Method to calculate Target Heart Rate ranges
        public string calculateTargetHeartRate(char sex, int yearOfBirth)
        {
            int minTargetHeartRange = 0;
            int maxTargetHeartRange = 0;
            int maxHeartRate = calculateMaxHeartRate(sex, yearOfBirth);

            minTargetHeartRange = Convert.ToInt32(0.55 * maxHeartRate);
            maxTargetHeartRange = Convert.ToInt32(0.7 * maxHeartRate);

            string range = minTargetHeartRange.ToString() + " - " + maxTargetHeartRange.ToString() + " beats per minute";
            return range;
        }

    }
}